// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteRewardConditionRecordReader is a Reader for the DeleteRewardConditionRecord structure.
type DeleteRewardConditionRecordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRewardConditionRecordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRewardConditionRecordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/rewards/{rewardId}/record returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRewardConditionRecordNoContent creates a DeleteRewardConditionRecordNoContent with default headers values
func NewDeleteRewardConditionRecordNoContent() *DeleteRewardConditionRecordNoContent {
	return &DeleteRewardConditionRecordNoContent{}
}

/*DeleteRewardConditionRecordNoContent handles this case with default header values.

  Delete reward success
*/
type DeleteRewardConditionRecordNoContent struct {
}

func (o *DeleteRewardConditionRecordNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/rewards/{rewardId}/record][%d] deleteRewardConditionRecordNoContent ", 204)
}

func (o *DeleteRewardConditionRecordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
