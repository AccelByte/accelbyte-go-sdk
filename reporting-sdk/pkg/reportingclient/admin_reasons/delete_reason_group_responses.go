// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// DeleteReasonGroupReader is a Reader for the DeleteReasonGroup structure.
type DeleteReasonGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteReasonGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteReasonGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteReasonGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteReasonGroupNoContent creates a DeleteReasonGroupNoContent with default headers values
func NewDeleteReasonGroupNoContent() *DeleteReasonGroupNoContent {
	return &DeleteReasonGroupNoContent{}
}

/*DeleteReasonGroupNoContent handles this case with default header values.


 */
type DeleteReasonGroupNoContent struct {
}

func (o *DeleteReasonGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] deleteReasonGroupNoContent ", 204)
}

func (o *DeleteReasonGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteReasonGroupInternalServerError creates a DeleteReasonGroupInternalServerError with default headers values
func NewDeleteReasonGroupInternalServerError() *DeleteReasonGroupInternalServerError {
	return &DeleteReasonGroupInternalServerError{}
}

/*DeleteReasonGroupInternalServerError handles this case with default header values.


 */
type DeleteReasonGroupInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteReasonGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] deleteReasonGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteReasonGroupInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteReasonGroupInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteReasonGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
