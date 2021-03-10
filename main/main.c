#include "FreeRTOS.h"
#include "task.h"
#include "esp_log.h"


// include components
//#include <komponenta.h>

#define TAG "HELLO_WORLD"

// Hello world task
static void hello_world_task(void *arg)) {
    uint32_t task_id = (uint32_t)arg;
    while (1) {
    ESP_LOGI(TAG, "Hello world task id: ",task_id," is running...");
    vTaskDelay(delay_ticks);
    }
    vTaskDelete(NULL);
}

//app entry
int app_main( void )
{
    ESP_LOGI(TAG, "Starting hello world task 1.");
    xTaskCreate(template_task, "hello world task", 1024 * 2, (void *)0, 10, NULL);
    ESP_LOGI(TAG, "Starting hello world task 1.");
    xTaskCreate(template_task, "hello world task", 1024 * 2, (void *)1, 10, NULL);
    return 0;
}
