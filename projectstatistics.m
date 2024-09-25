% Basic Statistics Calculator
clc;
clear;

% Input: Prompt user to enter a set of numbers
data_input = input('Enter a list of numbers (e.g., [1, 2, 3, 4, 5]): ');

% Convert the input to a numerical array if necessary
if ischar(data_input)  % Check if input is a string
    data_array = str2num(data_input); %#ok<ST2NM>
else
    data_array = data_input; % Assume it's already an array
end

% Check if the input is valid
if isempty(data_array) || ~isnumeric(data_array)
    error('Invalid input. Please enter a valid array of numbers.');
end

% Calculate statistics
mean_value = mean(data_array);
median_value = median(data_array);
mode_value = mode(data_array);
variance_value = var(data_array);
std_dev_value = std(data_array);

% Output: Display the results
fprintf('Basic Statistics:\n');
fprintf('Mean: %.2f\n', mean_value);
fprintf('Median: %.2f\n', median_value);
fprintf('Mode: %.2f\n', mode_value);
fprintf('Variance: %.2f\n', variance_value);
fprintf('Standard Deviation: %.2f\n',std_dev_value);
