#include "FreeRTOS.h"
#include "task.h"
#include "esp_log.h"


// include components
//#include <komponenta.h>

#define TAG "HELLO_WORLD"

//-----------------------------------------------------------/

extern void esp_vApplicationTickHook();
void IRAM_ATTR vApplicationTickHook()
{
esp_vApplicationTickHook();
}

//-----------------------------------------------------------/
extern void esp_vApplicationIdleHook();
void vApplicationIdleHook()
{
esp_vApplicationIdleHook();
}

//-----------------------------------------------------------/

void vApplicationDaemonTaskStartupHook( void )
{
}

// Hello world task
void hello_world_task(void *arg) {
    uint32_t task_id = (uint32_t)arg;
    while (1) {
    ESP_LOGI(TAG, "Hello world task is running...");
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}

//app runtime entry point
int app_main( void )
{
    ESP_LOGI(TAG, "Starting hello world task 1.");
    xTaskCreate(hello_world_task, "hello world task", 1024 * 2, (void *)0, 10, NULL);
    ESP_LOGI(TAG, "Starting hello world task 1.");
    xTaskCreate(hello_world_task, "hello world task", 1024 * 2, (void *)1, 10, NULL);
    return 0;
}
