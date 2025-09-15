import { notificationManager } from '@kit.NotificationKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { common } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';

const TAG: string = '[PublishOperation]';
const DOMAIN_NUMBER: number = 0xFF00;


export function openNotificationPermission(context: common.UIAbilityContext) {
  setTimeout(() => {
    notificationManager.requestEnableNotification(context).then(() => {
    }).catch((err: BusinessError) => {
    });
  }, 2000); // Waiting for 2 seconds
}

export function sendNotification() {
  let context = getContext() as common.UIAbilityContext;
  openNotificationPermission(context)
  let notificationRequest: notificationManager.NotificationRequest = {
    id: 1,
    content: {
      notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT, // Basic notification
      normal: {
        title: 'Match is over',
        text: 'Please check details',
        additionalText: 'test_additionalText',
      }
    }
  };
  notificationManager.publish(notificationRequest, (err: BusinessError) => {
    if (err) {
      hilog.error(DOMAIN_NUMBER, TAG, `Failed to publish notification. Code is ${err.code}, message is ${err.message}`);
      return;
    }
    hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in publishing notification.');
  });
}


