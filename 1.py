import psutil

cpu_monitoring= psutil.cpu_percent(interval=1)
memory_info=psutil.virtual_memory().available

print(f'CPU Result: {cpu_monitoring}%')

print(f'Memory Info: {memory_info}%')

