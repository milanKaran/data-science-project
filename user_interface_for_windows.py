from tkinter import *
from tkinter import ttk
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import math
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from datetime import datetime
from scipy.stats import linregress

all_states_df = pd.read_excel('state_names.xlsx', index_col=0, sheet_name='State Names')
dec_options = ['Yes', 'No']
fig1 = ''
fig2 = ''
fig3 = ''
fig4 = ''
fig5 = ''
fig6 = ''
fig7 = ''
fig8 = ''
fig9 = ''

# Initial variables and initial layout
root = Tk()
root.title('Storm Data Interface')
my_entires = []
currently_viewed_state = None
# Create a main Frame
top_frame = Frame(root)
center_frame = Frame(root)
bottom_frame = Frame(root)
top_frame.pack(side=TOP, expand=YES)
# Create a Canvas
canvas = Canvas(center_frame)
canvas.pack(side=LEFT, fill=BOTH, expand=1)
# add a scrollbar to the canvas
vertical_scrollbar = ttk.Scrollbar(center_frame, orient=VERTICAL, command=canvas.yview)
horizontal_scrollbar = ttk.Scrollbar(bottom_frame, orient=HORIZONTAL, command=canvas.xview)
vertical_scrollbar.pack(side=RIGHT, fill=Y)
horizontal_scrollbar.pack(expand=1, fill=X)
# Configure the canvas
canvas.configure(yscrollcommand=vertical_scrollbar.set, xscrollcommand=horizontal_scrollbar.set)
canvas.bind('<Configure>', lambda e: canvas.configure(scrollregion=canvas.bbox('all')))
# Create another Frame inside Canvas
second_frame = Frame(canvas)
# Add that new Frame to a window in the canvas
canvas.create_window((0, 0), window=second_frame, anchor='nw')
state_selected = StringVar()
decision_selected = StringVar()
state_name_label = Label(top_frame, text='Please select a state:')
ind_years_label = Label(top_frame, text='Would you like to see the breakdown of data in detail?')
state_name_dropdown = OptionMenu(top_frame, state_selected, *all_states_df['STATE'])
user_decision_ind_years = OptionMenu(top_frame, decision_selected, *dec_options)
state_selected.set(all_states_df['STATE'][1])
decision_selected.set('Yes')
state_name_label.grid(row=0, column=0)
state_name_dropdown.grid(row=0, column=1)
ind_years_label.grid(row=1, column=0)
user_decision_ind_years.grid(row=1, column=1)
entry_row = 0
entry_column = 0


def reinitialize_frames_canvas():
    global second_frame, canvas, center_frame, root, vertical_scrollbar, horizontal_scrollbar, bottom_frame
    # clear all the windows
    for widget in second_frame.winfo_children():
        widget.destroy()
    second_frame.destroy()
    canvas.destroy()
    center_frame.destroy()
    for widget in bottom_frame.winfo_children():
        widget.destroy()

    # create new windows
    center_frame = Frame(root)
    canvas = Canvas(center_frame)
    canvas.pack(side=LEFT, fill=BOTH, expand=1)
    vertical_scrollbar = ttk.Scrollbar(center_frame, orient=VERTICAL, command=canvas.yview)
    horizontal_scrollbar = ttk.Scrollbar(bottom_frame, orient=HORIZONTAL, command=canvas.xview)
    vertical_scrollbar.pack(side=RIGHT, fill=Y)
    horizontal_scrollbar.pack(expand=1, fill=X)
    canvas.configure(yscrollcommand=vertical_scrollbar.set, xscrollcommand=horizontal_scrollbar.set)
    canvas.bind('<Configure>', lambda e: canvas.configure(scrollregion=canvas.bbox('all')))
    second_frame = Frame(canvas)
    canvas.create_window((0, 0), window=second_frame, anchor='nw')
    center_frame.pack(side=TOP, expand=YES, fill=BOTH)

    # Adjust the size of the newly created canvas
    width = root.winfo_screenwidth() * 0.8
    height = root.winfo_screenheight() * 0.8
    canvas.config(width=width * 0.98, height=height * 0.85)


def prepare_center_frame():
    global entry_row, currently_viewed_state, fig1, fig2, fig3, fig4, fig5, fig6, fig7, fig8, fig9
    if entry_row != 0:
        fig1.clear()
        fig2.clear()
        fig3.clear()
        fig4.clear()
        fig5.clear()
        fig6.clear()
        if fig7 != '':
            fig7.clear()
            plt.close(fig7)
        fig8.clear()
        fig9.clear()
        plt.close(fig1)
        plt.close(fig2)
        plt.close(fig3)
        plt.close(fig4)
        plt.close(fig5)
        plt.close(fig6)
        plt.close(fig8)
        plt.close(fig9)
        reinitialize_frames_canvas()
        entry_row = 0
    else:
        # bottom_frame.grid(row=2, column=0, sticky='ew')
        bottom_frame.pack(side=BOTTOM, expand=YES, fill=BOTH)
        # center_frame.grid(row=1, column=0, sticky='ew')
        center_frame.pack(side=BOTTOM, expand=YES, fill=BOTH)
        enlarge_screen()


def enlarge_screen():
    width = root.winfo_screenwidth() * 0.8
    height = root.winfo_screenheight() * 0.8
    canvas.config(width=width * 0.98, height=height * 0.85)
    root.geometry("%dx%d" % (width, height))


def generate_data():
    prepare_center_frame()
    global currently_viewed_state, entry_row, fig1, fig2, fig3, fig4, fig5, fig6, fig7, fig8, fig9
    state_name = state_selected.get()
    data_in_detail_decision = decision_selected.get()
    if currently_viewed_state is None:
        currently_viewed_state = Label(top_frame, text='Storm data interface for ' + state_name, font=('Arial', 20))
    else:
        currently_viewed_state.destroy()
        currently_viewed_state = Label(top_frame, text='Storm data interface for ' + state_name, font=('Arial', 20))
    currently_viewed_state.grid(row=2, column=0)

    file_name = state_name.upper() + '.xlsx'
    excel_sheets = pd.ExcelFile(file_name)
    storm_risk_level_name = 'Storm Event Risk Level'
    outputs_risk_level_name = 'Risk level Outputs'
    if storm_risk_level_name not in excel_sheets.sheet_names:
        storm_risk_level_name = 'Storm Event Risk Scale'
    if outputs_risk_level_name not in excel_sheets.sheet_names:
        outputs_risk_level_name = 'Risk Scale Outputs'

    total_percentages_df = pd.read_excel(file_name, index_col=0, sheet_name='Total Percentages')
    desc_one = 'The human risk level percentage shows the weighted average of the total number of deaths and injuries, both direct and indirect, from all storm events by year\nThe financial risk level percentage shows the weighted average of the total number of damaged crops and property, in dollars, from all storm events by year\nThe average human risk level percentage for all years is: ' + str(
        round(total_percentages_df['Human'][0],
              2)) + '\nThe average financial risk level percentage for all years is: ' + str(
        round(total_percentages_df['Financial'][0], 2))
    risk_level_description = Label(second_frame, text=desc_one, font=('Arial', 13))
    risk_level_description.grid(row=entry_row, column=0)

    entry_row += 1

    risk_level_df = pd.read_excel(file_name, index_col=0, sheet_name=outputs_risk_level_name)
    fig1, ax = plt.subplots(figsize=(20, 5))
    risk_level_line_plot = FigureCanvasTkAgg(fig1, second_frame)
    risk_level_line_plot.get_tk_widget().grid(row=entry_row, column=0)
    ax.plot(risk_level_df.index, risk_level_df['Human Risk level Output'], label='Human Risk level')
    ax.scatter(risk_level_df.index, risk_level_df['Human Risk level Output'])
    ax.plot(risk_level_df.index, risk_level_df['Financial Risk level Output'], label='Financial Risk level')
    ax.scatter(risk_level_df.index, risk_level_df['Financial Risk level Output'])
    ax.set_title(state_name.upper() + ' Human and Financial Risk level By Year')
    ax.set_xticks(risk_level_df.index)
    ax.legend()
    ax.set_xlabel('Year')
    ax.set_ylabel('Risk level Percentage')

    entry_row += 1

    # HUMAN
    label_offsets = [0.45, -0.45, 1, -0.7]
    stems = [0.3, -0.3, 0.85, -0.3]
    if total_percentages_df['Human'][0] == 0:
        human_data = [0, total_percentages_df['Human'][0], 1.47, 34.38]
        human_labels = ['Min Value=0', state_name.upper() + ' = ' + str(round(total_percentages_df['Human'][0], 2)),
                        'Average Value = 1.47', 'Max Value = 34.38']
        label_offsets[1] = -1.20
        stems[1] = -0.9
    elif total_percentages_df['Human'][0] <= 1.47:
        human_data = [0, total_percentages_df['Human'][0], 1.47, 34.38]
        human_labels = ['Min Value=0', state_name.upper() + ' = ' + str(round(total_percentages_df['Human'][0], 2)),
                        'Average Value = 1.47', 'Max Value = 34.38']
        label_offsets[1] = -1.20
        stems[1] = -0.9
    elif (total_percentages_df['Human'][0] > 1.47) and (total_percentages_df['Human'][0] <= (0.9 * 34.38)):
        human_data = [0, 1.47, total_percentages_df['Human'][0], 34.38]
        human_labels = ['Min Value=0', 'Average Value = 1.47',
                        state_name.upper() + ' = ' + str(round(total_percentages_df['Human'][0], 2)),
                        'Max Value = 34.38']
        label_offsets[2] = 1.20
        stems[2] = 0.9
    else:
        human_data = [0, 1.47, total_percentages_df['Human'][0], 34.38]
        human_labels = ['Min Value=0', 'Average Value = 1.47',
                        state_name.upper() + ' = ' + str(round(total_percentages_df['Human'][0], 2)),
                        'Max Value = 34.38']
        label_offsets[2] = 1.20
        stems[2] = 0.9

    fig2, ax = plt.subplots(figsize=(20, 5))
    risk_level_human_timeline = FigureCanvasTkAgg(fig2, second_frame)
    risk_level_human_timeline.get_tk_widget().grid(row=entry_row, column=0)
    ax.set_ylim(-1.5, 1.5)
    ax.set_xlim(min(human_data) - 2, max(human_data) + 2)
    ax.axhline(0, xmin=0.05, xmax=0.95, c='deeppink', zorder=1)
    ax.scatter(human_data, np.zeros(len(human_data)), s=120, c='palevioletred', zorder=2)
    ax.scatter(human_data, np.zeros(len(human_data)), s=30, c='darkmagenta', zorder=3)
    label_offsets = np.array(label_offsets)
    for i, (l, d) in enumerate(zip(human_labels, human_data)):
        _ = ax.text(d, label_offsets[i], l, ha='center', fontfamily='serif', fontweight='bold', color='Black',
                    fontsize=15)
    stems = np.array(stems)
    marker_line, stem_line, baseline = ax.stem(human_data, stems, use_line_collection=True)
    _ = plt.setp(marker_line, marker=',', color='darkmagenta')
    _ = plt.setp(stem_line, color='darkmagenta')
    # hide lines around chart
    for spine in ["left", "top", "right", "bottom"]:
        _ = ax.spines[spine].set_visible(False)
    # hide tick labels
    _ = ax.set_xticks([])
    _ = ax.set_yticks([])
    _ = ax.set_title('Human Risk level Information', fontweight="bold", fontfamily='serif', fontsize=16,
                     color='royalblue')

    entry_row += 1

    # FINANCIAL
    if total_percentages_df['Financial'][0] == 0:
        financial_data = [0, total_percentages_df['Financial'][0], 1.47, 40.53]
        financial_labels = ['Min Value=0',
                            state_name.upper() + ' = ' + str(round(total_percentages_df['Financial'][0], 2)),
                            'Average Value = 1.47', 'Max Value = 40.53']
        label_offsets[1] = -1.20
        stems[1] = -0.9
    elif total_percentages_df['Financial'][0] <= 1.47:
        financial_data = [0, total_percentages_df['Financial'][0], 1.47, 40.53]
        financial_labels = ['Min Value=0',
                            state_name.upper() + ' = ' + str(round(total_percentages_df['Financial'][0], 2)),
                            'Average Value = 1.47', 'Max Value = 40.53']
        label_offsets[1] = -1.20
        stems[1] = -0.9
    elif (total_percentages_df['Financial'][0] > 1.47) and (total_percentages_df['Financial'][0] <= (0.9 * 40.53)):
        financial_data = [0, 1.47, total_percentages_df['Financial'][0], 40.53]
        financial_labels = ['Min Value=0', 'Average Value=1.47',
                            state_name.upper() + '=' + str(round(total_percentages_df['Financial'][0], 2)),
                            'Max Value = 40.53']
        label_offsets[2] = 1.20
        stems[2] = 0.9
    else:
        financial_data = [0, 1.47, total_percentages_df['Financial'][0], 40.53]
        financial_labels = ['Min Value=0', 'Average Value=1.47',
                            state_name.upper() + '=' + str(round(total_percentages_df['Financial'][0], 2)),
                            'Max Value = 40.53']
        label_offsets[2] = 1.20
        stems[2] = 0.9

    fig3, ax = plt.subplots(figsize=(20, 5))
    risk_level_financial_timeline = FigureCanvasTkAgg(fig3, second_frame)
    risk_level_financial_timeline.get_tk_widget().grid(row=entry_row, column=0)
    ax.set_ylim(-1.5, 1.5)
    ax.axhline(0, xmin=0.05, xmax=0.95, c='deeppink', zorder=1)
    ax.scatter(financial_data, np.zeros(len(financial_data)), s=120, c='palevioletred', zorder=2)
    ax.scatter(financial_data, np.zeros(len(financial_data)), s=30, c='darkmagenta', zorder=3)
    label_offsets = np.array(label_offsets)
    for i, (l, d) in enumerate(zip(financial_labels, financial_data)):
        _ = ax.text(d, label_offsets[i], l, ha='center', fontfamily='serif', fontweight='bold', color='Black',
                    fontsize=15)
    stems = np.array(stems)
    marker_line, stem_line, baseline = ax.stem(financial_data, stems, use_line_collection=True)
    _ = plt.setp(marker_line, marker=',', color='darkmagenta')
    _ = plt.setp(stem_line, color='darkmagenta')
    # hide lines around chart
    for spine in ["left", "top", "right", "bottom"]:
        _ = ax.spines[spine].set_visible(False)
    # hide tick labels
    _ = ax.set_xticks([])
    _ = ax.set_yticks([])
    _ = ax.set_title('Financial Risk level Information', fontweight="bold", fontfamily='serif', fontsize=16,
                     color='royalblue')

    entry_row += 1

    risk_scale_storm_events_df = pd.read_excel(file_name, index_col=0, sheet_name=storm_risk_level_name)

    # Description below is for risk Scale Grouped bar chart
    average_risk_Scale_human = sum(risk_scale_storm_events_df['Human']) / 57
    average_risk_Scale_financial = sum(risk_scale_storm_events_df['Financial']) / 57

    if math.isnan(average_risk_Scale_human):
        average_risk_Scale_human = 0
    if math.isnan(average_risk_Scale_financial):
        average_risk_Scale_financial = 0

    desc_two = 'The human risk scale percentage shows the weighted average of the total number of deaths and injuries, both direct and indirect, for all years by storm event.\nThe financial risk scale percentage shows the weighted average of the total number of damaged crops and property, in dollars, for all years by storm event.\nThe average human risk scale percentage for all years is: ' + str(
        round(average_risk_Scale_human, 2)) + '.\nThe average financial risk scale percentage for all years is: ' + str(
        round(average_risk_Scale_financial, 2)) + '.'

    risk_scale_description = Label(second_frame, text=desc_two, font=('Arial', 15))
    risk_scale_description.grid(row=entry_row, column=0)
    entry_row += 1

    # Risk Scale Grouped bar chart
    fig4, ax = plt.subplots(figsize=(20, 5))
    risk_scale_grouped_barplot = FigureCanvasTkAgg(fig4, second_frame)
    risk_scale_grouped_barplot.get_tk_widget().grid(row=entry_row, column=0)

    ax.bar(risk_scale_storm_events_df.index, risk_scale_storm_events_df['Human'], label='Human Risk scale')
    ax.bar(risk_scale_storm_events_df.index, risk_scale_storm_events_df['Financial'], label='Financial Risk scale')
    ax.set_xticks(risk_scale_storm_events_df.index)
    ax.set_xticklabels(risk_scale_storm_events_df.index, rotation=90)
    ax.set_xlabel('Event Type')
    ax.set_ylabel('Risk Scale Percentage')
    ax.legend()
    ax.set_title(state_name.upper() + ' Human and Financial Risk scale By Storm Events')
    plt.xticks(fontsize=15)
    fig4.tight_layout()

    entry_row += 1
    desc_three = 'The below graph shows the correlation between the summation of risk variables and years for both human and financial.'
    linear_regression_description = Label(second_frame, text=desc_three, font=('Arial', 13))
    linear_regression_description.grid(row=entry_row, column=0)

    entry_row += 1

    fig5, ax = plt.subplots(ncols=2, figsize=(25, 10))
    slr_plots = FigureCanvasTkAgg(fig5, second_frame)
    slr_plots.get_tk_widget().grid(row=entry_row, column=0)
    yearly_df = pd.read_excel(file_name, index_col=0, sheet_name='Yearly data')
    # Projecting data for the next 10 years (i.e.: up to year 2031)
    # For human linear regression
    yearly_df['Sum of Human'] = yearly_df['states_total_injuries_direct'] + yearly_df[
        'states_total_injuries_indirect'] + yearly_df['states_total_deaths_direct'] + yearly_df[
                                    'states_total_deaths_indirect']

    ax[0].scatter(x=yearly_df.index, y=yearly_df['Sum of Human'])
    ax[0].set_xlabel('Year')
    ax[0].set_ylabel('Sum of human risk variables')
    ax[0].set_title('Correlation of years and human risk variables')
    human_variables_lin_regress = linregress(x=yearly_df.index, y=yearly_df['Sum of Human'])

    # For Financial linear regression
    yearly_df['Sum of Financial'] = yearly_df['states_total_damaged_property'] + yearly_df['states_total_damaged_crops']
    ax[1].scatter(x=yearly_df.index, y=yearly_df['Sum of Financial'])
    ax[1].set_xlabel('Year')
    ax[1].set_ylabel('Sum of Financial risk variables (in billions)')
    ax[1].set_title('Correlation of years and Financial risk variables')

    plt.xticks(fontsize=15)

    financial_variables_lin_regress = linregress(x=yearly_df.index, y=yearly_df['Sum of Financial'])

    extension_of_x_axis = yearly_df.index

    for k in range(extension_of_x_axis.values[-1] + 1, 2032):
        extension_of_x_axis = np.append(extension_of_x_axis, [k])
    ax[0].plot(extension_of_x_axis,
               human_variables_lin_regress.intercept + human_variables_lin_regress.slope * extension_of_x_axis)
    ax[1].plot(extension_of_x_axis,
               financial_variables_lin_regress.intercept + financial_variables_lin_regress.slope * extension_of_x_axis)
    yearly_df.drop(['Sum of Human', 'Sum of Financial'], inplace=True, axis=1)

    entry_row += 1

    parser = lambda date: datetime.strptime(date, '%Y%m')
    data_df = pd.read_excel(file_name, index_col='BEGIN_YEARMONTH', sheet_name='Storms-locations data',
                            parse_dates=['BEGIN_YEARMONTH'], date_parser=parser)
    data_df.drop('Unnamed: 0', inplace=True, axis=1)
    data_df['Year'] = data_df.index.year
    bar_graph_data_df = data_df.reset_index()
    bar_graph_data_df = bar_graph_data_df[['Year', 'EVENT_TYPE']].groupby(
        ['Year', 'EVENT_TYPE']).value_counts().reset_index().rename({0: 'Frequency'}, axis=1)
    # Bar graphs for Event types in the years and their frequency throughout the year
    desc_four = 'The below graph shows the frequency of each storm occurrence'
    if data_in_detail_decision.lower() == 'yes':
        desc_four = desc_four + ' for each year.'
        storm_frequency_in_detail = Label(second_frame, text=desc_four, font=('Arial', 13))
        storm_frequency_in_detail.grid(row=entry_row, column=0)

        entry_row += 1

        fig6, ax = plt.subplots(nrows=13, ncols=2, figsize=(25, 130))
        event_types_each_year = FigureCanvasTkAgg(fig6, second_frame)
        event_types_each_year.get_tk_widget().grid(row=entry_row, column=0)
        year = 1996
        for i in range(0, 13):
            for j in range(0, 2):
                bar_graph_data_year_df = bar_graph_data_df.copy().loc[bar_graph_data_df['Year'] == year]
                title_name = 'Each Storm Type Occurrence Frequency for year ' + str(year)
                sns.barplot(x='EVENT_TYPE', y='Frequency', data=bar_graph_data_year_df, ax=ax[i][j], ci=None)
                ax[i][j].set_title(title_name)
                ax[i][j].bar_label(ax[i][j].containers[0])
                ax[i][j].set_xticklabels(ax[i][j].get_xticklabels(), rotation=40, ha='right')
                year += 1
        fig6.tight_layout()
    else:
        desc_four = desc_four + ' across all years.'
        storm_frequency_in_summary = Label(second_frame, text=desc_four, font=('Arial', 13))
        storm_frequency_in_summary.grid(row=entry_row, column=0)

        entry_row += 1

        fig6 = sns.catplot(x='Year', y='Frequency', data=bar_graph_data_df, kind='bar', hue='EVENT_TYPE', height=9,
                           aspect=6).figure
        event_types_all_years = FigureCanvasTkAgg(fig6, second_frame)
        event_types_all_years.get_tk_widget().grid(row=entry_row, column=0)
        fig6.suptitle('Each Storm Type Occurrence Frequency -- All Years')
        plt.xticks(fontsize=15)

    entry_row += 1

    display_geographical_map = True
    frequent_storms = []
    for i in range(1996, 2022):
        current_df = bar_graph_data_df.loc[bar_graph_data_df['Year'] == i]
        maximum_frequency_of_a_storm = current_df['Frequency'].max()
        maximum_frequency_storm_name = current_df.loc[current_df['Frequency'] == maximum_frequency_of_a_storm][
            'EVENT_TYPE']
        if len(maximum_frequency_storm_name) > 1:
            frequent_storms.append(maximum_frequency_storm_name.values[0])
            frequent_storms.append(maximum_frequency_storm_name.values[1])
        else:
            if not maximum_frequency_storm_name.empty:
                frequent_storms.append(maximum_frequency_storm_name.item())

    frequent_storms_totals = dict()
    for element in frequent_storms:
        if element not in frequent_storms_totals.keys():
            frequent_storms_totals[element] = 1
        else:
            frequent_storms_totals[element] += 1

    first_frequent_storm = max(frequent_storms_totals, key=frequent_storms_totals.get)
    frequent_storms_totals.pop(first_frequent_storm)
    if len(frequent_storms_totals) == 0:
        second_frequent_storm = first_frequent_storm
    else:
        second_frequent_storm = max(frequent_storms_totals, key=frequent_storms_totals.get)

    most_common_storm_event_type = first_frequent_storm
    frequent_storm_description = 'Most frequent storm event type is ' + most_common_storm_event_type
    # Code for where in the states the most frequent storm event occurs
    most_frequent_storm_locations_df = data_df.loc[
        (data_df['EVENT_TYPE'] == first_frequent_storm) &
        (data_df['BEGIN_LAT'] != 0) & (data_df['BEGIN_LON'] != 0) &
        (data_df['END_LAT'] != 0) & (data_df['END_LON'] != 0) & (
                    data_df['BEGIN_LAT'] < data_df['BEGIN_LAT'].quantile(0.99)) & (
                    data_df['BEGIN_LAT'] > data_df['BEGIN_LAT'].quantile(0.01)) & (
                    data_df['BEGIN_LON'] < data_df['BEGIN_LON'].quantile(0.99)) & (
                    data_df['BEGIN_LON'] > data_df['BEGIN_LON'].quantile(0.01)) & (
                    data_df['END_LAT'] < data_df['END_LAT'].quantile(0.99)) & (
                    data_df['END_LAT'] > data_df['END_LAT'].quantile(0.01)) & (
                    data_df['END_LON'] < data_df['END_LON'].quantile(0.99)) & (
                    data_df['END_LON'] > data_df['END_LON'].quantile(0.01))
        ][['Year', 'BEGIN_LAT', 'BEGIN_LON', 'END_LAT', 'END_LON']]

    if most_frequent_storm_locations_df.empty or len(most_frequent_storm_locations_df.index) < 5:
        most_frequent_storm_locations_df = data_df.loc[(data_df['EVENT_TYPE'] == second_frequent_storm) &
                                                       (data_df['BEGIN_LAT'] != 0) & (data_df['BEGIN_LON'] != 0) &
                                                       (data_df['END_LAT'] != 0) & (data_df['END_LON'] != 0) & (
                                                                   data_df['BEGIN_LAT'] < data_df['BEGIN_LAT'].quantile(
                                                               0.99)) & (
                                                                   data_df['BEGIN_LAT'] > data_df['BEGIN_LAT'].quantile(
                                                               0.01)) & (
                                                                   data_df['BEGIN_LON'] < data_df['BEGIN_LON'].quantile(
                                                               0.99)) & (
                                                                   data_df['BEGIN_LON'] > data_df['BEGIN_LON'].quantile(
                                                               0.01)) & (
                                                                   data_df['END_LAT'] < data_df['END_LAT'].quantile(
                                                               0.99)) & (
                                                                   data_df['END_LAT'] > data_df['END_LAT'].quantile(
                                                               0.01)) & (
                                                                   data_df['END_LON'] < data_df['END_LON'].quantile(
                                                               0.99)) & (
                                                                   data_df['END_LON'] > data_df['END_LON'].quantile(
                                                               0.01))][
            ['Year', 'BEGIN_LAT', 'BEGIN_LON', 'END_LAT', 'END_LON', 'EVENT_TYPE']]
        if most_frequent_storm_locations_df.empty or len(most_frequent_storm_locations_df.index) < 5:
            frequent_storm_description = frequent_storm_description + '. But there is no data to display for it.'
            display_geographical_map = False
        else:
            most_common_storm_event_type = second_frequent_storm
            frequent_storm_description = frequent_storm_description + '. However no data was found for the most frequent storms locations. Instead, we display below the storm locations of the second most frequent storm, which is ' + most_common_storm_event_type + '.'
    else:
        frequent_storm_description = frequent_storm_description + ' and can be seen in the map below.'

    b_box = (
        most_frequent_storm_locations_df.END_LON.min(),
        most_frequent_storm_locations_df.END_LON.max(),
        most_frequent_storm_locations_df.END_LAT.min(),
        most_frequent_storm_locations_df.END_LAT.max()
    )
    desc_five = frequent_storm_description
    common_storm_description = Label(second_frame, text=desc_five, font=('Arial', 15))
    common_storm_description.grid(row=entry_row, column=0)

    fig7 = ''
    if display_geographical_map:
        entry_row += 1
        # Code below is for generating a geographical map
        # of the most frequent storm
        locations_plot = sns.lmplot(x='END_LON', y='END_LAT', data=most_frequent_storm_locations_df, hue='Year',
                                    fit_reg=False, height=14, aspect=1, facet_kws={'legend_out': True})
        fig7 = locations_plot.figure
        ax = locations_plot.ax
        geographical_fig = FigureCanvasTkAgg(fig7, second_frame)
        geographical_fig.get_tk_widget().grid(row=entry_row, column=0)
        image_file = state_name.lower().replace(' ', '') + '.PNG'
        ohio_img = plt.imread(image_file)
        ax.set_title(most_common_storm_event_type + ' Locations')
        ax.set_xlim(b_box[0], b_box[1])
        ax.set_ylim(b_box[2], b_box[3])
        ax.imshow(ohio_img, zorder=0, extent=b_box, aspect='equal')
        # fig7.tight_layout()

    entry_row += 1

    desc_six = 'Data below shows what the yearly average storm property damage is for each state.\nHighest average damaged property cost for the state of ' + state_name + ' happened in the year ' + str(
        yearly_df.loc[
            yearly_df['states_total_damaged_property'] == max(yearly_df['states_total_damaged_property'])].index.values[
            0]) + ' and it was $' + str(math.floor(
        yearly_df.loc[yearly_df['states_total_damaged_property'] == max(yearly_df['states_total_damaged_property'])][
            'states_total_damaged_property'] / 13562)) + '.'
    yearly_average_property_dam = Label(second_frame, text=desc_six, font=('Arial', 15))
    yearly_average_property_dam.grid(row=entry_row, column=0)

    entry_row += 1

    # Data below generates a single bar graph visual that displays yearly average property for currently viewed state:
    fig8, ax = plt.subplots(figsize=(25, 10))
    yearly_average_prop_dam_fig = FigureCanvasTkAgg(fig8, second_frame)
    yearly_average_prop_dam_fig.get_tk_widget().grid(row=entry_row, column=0)
    ax.bar(yearly_df.index, (yearly_df['states_total_damaged_property'] / 13562))
    ax.set_title('Yearly average storm property damage for the state of ' + state_name, fontsize=23)
    ax.bar_label(ax.containers[0])
    ax.set_xticks(yearly_df.index, fontsize=15)
    ax.set_xticklabels(yearly_df.index)
    ax.set_xlabel('Years', fontsize=20)
    ax.set_ylabel('Average storm property damage (in US $)', fontsize=20)

    entry_row += 1

    # Visualization below is for the visual goal 'Seeing correlation between states and property damage/fatalities/injuries'.
    correlation_percentages_df = pd.read_excel('correlation_averages.xlsx', index_col=0,
                                               sheet_name='Correlation averages in detail')
    if data_in_detail_decision.lower() == 'no':
        correlation_percentages_df = correlation_percentages_df.loc[
            correlation_percentages_df['State Name'] == state_name.upper()]
        correlation_percentages_all_states_df = pd.read_excel('correlation_averages.xlsx', index_col=0,
                                                              sheet_name='Correlation averages in Summary')
        correlation_percentages_df = pd.concat([correlation_percentages_df, correlation_percentages_all_states_df],
                                               axis=0)
        correlation_percentages_df.reset_index(drop=True, inplace=True)

    desc_seven = 'The Below graph shows the proportion of each risk variable for both human and financial risk variables'

    if data_in_detail_decision.lower() == 'yes':
        desc_seven = desc_seven + ' for all states.'
        correlation_percentages_desc = Label(second_frame, text=desc_seven, font=('Arial', 13))
        correlation_percentages_desc.grid(row=entry_row, column=0)

        entry_row += 1
        correlation_plots = sns.catplot(x='Parameters', y='Percentages', data=correlation_percentages_df, kind='bar',
                                        col='State Name', col_wrap=4)
        fig9 = correlation_plots.figure
        correlation_percentages_figure = FigureCanvasTkAgg(fig9, second_frame)
        correlation_percentages_figure.get_tk_widget().grid(row=entry_row, column=0)
        correlation_plots.set_xticklabels(rotation=30)
        fig9.tight_layout()

    else:
        desc_seven = desc_seven + ' as compared to the country.'
        correlation_percentages_desc = Label(second_frame, text=desc_seven, font=('Arial', 13))
        correlation_percentages_desc.grid(row=entry_row, column=0)

        entry_row += 1

        correlation_plots = sns.catplot(x='Parameters', y='Percentages', data=correlation_percentages_df, kind='bar',
                                        col='State Name')
        fig9 = correlation_plots.figure
        correlation_percentages_figure = FigureCanvasTkAgg(fig9, second_frame)
        correlation_percentages_figure.get_tk_widget().grid(row=entry_row, column=0)
        correlation_plots.set_xticklabels(rotation=30)
        fig9.tight_layout()

    entry_row += 1

    desc_eight = '   '
    padding_desc = Label(second_frame, text=desc_eight, font=('Arial', 13))
    padding_desc.grid(row=entry_row, column=0)


button = Button(top_frame, text='Generate Data', command=generate_data)
button.grid(row=1, column=2)

root.mainloop()

if fig1 != '':
    fig1.clear()
    fig2.clear()
    fig3.clear()
    fig4.clear()
    fig5.clear()
    fig6.clear()
    if fig7 != '':
        fig7.clear()
        plt.close(fig7)
    fig8.clear()
    fig9.clear()
    plt.close(fig1)
    plt.close(fig2)
    plt.close(fig3)
    plt.close(fig4)
    plt.close(fig5)
    plt.close(fig6)
    plt.close(fig8)
    plt.close(fig9)
