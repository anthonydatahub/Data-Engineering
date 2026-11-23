order1 = 150.75
order2 = 200.50
order3 = 99.99

total = order1 + order2 + order3
average = total / 3

print(f"Total: {total}")
print(f"Average: {average}")



orders = [150.75, 200.50, 99.99, -50.00, 125.25]
accepted_orders = []
for order in orders:
    if order > 0:
        accepted_orders.append(order)

total_accepted = sum(accepted_orders)
average_accepted = total_accepted / len(accepted_orders) if accepted_orders else 0
num_accepted = len(accepted_orders)


print(f"Accepted Orders: {accepted_orders}")
print(f"Total Accepted: {total_accepted}")
print(f"Average Accepted: {average_accepted}")
print(f"Number of Accepted Orders: {num_accepted}")


