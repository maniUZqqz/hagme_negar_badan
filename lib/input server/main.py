import cv2
#cv2.imwrite("Q.png",black_whit)


Download_image_Demo = cv2.imread('Demo_ReSize.jpg')
Download_image = cv2.imread('ReSize.jpg')




# def detect_skeletal_issues( Download_image_Demo , Download_image ):
#
#     black_whit_Demo = cv2.cvtColor(Download_image_Demo, cv2.COLOR_BGR2GRAY)
#     black_whit = cv2.cvtColor(Download_image, cv2.COLOR_BGR2GRAY)
#
#
#     diff = cv2.absdiff(black_whit_Demo,black_whit)
#
#     height, width = diff.shape
#     neck_start = int(height * 20 / 180)
#     neck_end = int(height * 25 / 180)
#     torso_start = int(height * 25 / 180)
#     torso_end = int(height * 95 / 180)
#     legs_start = int(height * 85 / 180)
#     legs_end = height
#
#     _, neck_thresh = cv2.threshold(neck_diff, 100, 255, cv2.THRESH_BINARY)
#     _, torso_thresh = cv2.threshold(torso_diff, 100, 255, cv2.THRESH_BINARY)
#     _, legs_thresh = cv2.threshold(legs_diff, 100, 255, cv2.THRESH_BINARY)
#
#     neck_status = 'سالم' if neck_thresh.mean() == 0 else 'مشکل انحراف ستون فقرات'
#     torso_status = 'سالم' if torso_thresh.mean() == 0 else 'بیماری‌های اسکلتی'
#     legs_status = 'سالم' if legs_thresh.mean() == 0 else 'مشکل پای پرانتزی'
#
#     height, width = diff.shape
#     neck_start = int(height * 20 / 180)
#     neck_end = int(height * 25 / 180)
#     torso_start = int(height * 25 / 180)
#     torso_end = int(height * 95 / 180)
#     legs_start = int(height * 85 / 180)
#     legs_end = height
#
#     neck_diff = diff[neck_start:neck_end, :]
#     torso_diff = diff[torso_start:torso_end, :]
#     legs_diff = diff[legs_start:legs_end, :]
#
#     neck_status = 'سالم' if neck_diff.mean() < cv2.threshold else 'مشکل انحراف ستون فقرات'
#     torso_status = 'سالم' if torso_diff.mean() < cv2.threshold else 'بیماری‌های اسکلتی'
#     legs_status = 'سالم' if legs_diff.mean() < cv2.threshold else 'مشکل پای پرانتزی'
#
#     Demo_diff_jpg = cv2.imwrite( "Demo_diff.jpg" , black_whit_Demo )
#     diff_jpg = cv2.imwrite( "diff.jpg" , black_whit )
#
#
#
#     return neck_status, torso_status, legs_status , Demo_diff_jpg , diff_jpg
#
#
#
# neck_status, torso_status, legs_status = detect_skeletal_issues(Download_image_Demo , Download_image )
#
# print("وضعیت گردن:", neck_status)
# print("وضعیت تنه:", torso_status)
# print("وضعیت پاها:", legs_status)


def detect_skeletal_issues(Download_image_Demo, Download_image):
    black_white_Demo = cv2.cvtColor(Download_image_Demo, cv2.COLOR_BGR2GRAY)
    black_white = cv2.cvtColor(Download_image, cv2.COLOR_BGR2GRAY)

    diff = cv2.absdiff(black_white_Demo, black_white)

    height, width = diff.shape
    neck_start = int(height * 20 / 180)
    neck_end = int(height * 25 / 180)
    torso_start = int(height * 25 / 180)
    torso_end = int(height * 95 / 180)
    legs_start = int(height * 85 / 180)
    legs_end = height

    neck_diff = diff[neck_start:neck_end, :]
    torso_diff = diff[torso_start:torso_end, :]
    legs_diff = diff[legs_start:legs_end, :]

    _, neck_thresh = cv2.threshold(neck_diff, 100, 255, cv2.THRESH_BINARY)
    _, torso_thresh = cv2.threshold(torso_diff, 100, 255, cv2.THRESH_BINARY)
    _, legs_thresh = cv2.threshold(legs_diff, 100, 255, cv2.THRESH_BINARY)

    neck_status = 'سالم' if neck_thresh.mean() == 0 else 'مشکل انحراف ستون فقرات'
    torso_status = 'سالم' if torso_thresh.mean() == 0 else 'بیماری‌های اسکلتی'
    legs_status = 'سالم' if legs_thresh.mean() == 0 else 'مشکل پای پرانتزی'

    cv2.imwrite("Demo_diff.jpg", black_white_Demo)
    cv2.imwrite("diff.jpg", black_white)

    return neck_status, torso_status, legs_status


neck_status, torso_status, legs_status = detect_skeletal_issues(Download_image_Demo, Download_image)

print("وضعیت گردن:", neck_status)
print("وضعیت تنه:", torso_status)
print("وضعیت پاها:", legs_status)
