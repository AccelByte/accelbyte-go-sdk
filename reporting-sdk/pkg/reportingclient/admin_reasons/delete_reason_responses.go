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

// DeleteReasonReader is a Reader for the DeleteReason structure.
type DeleteReasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteReasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteReasonNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteReasonInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteReasonNoContent creates a DeleteReasonNoContent with default headers values
func NewDeleteReasonNoContent() *DeleteReasonNoContent {
	return &DeleteReasonNoContent{}
}

/*DeleteReasonNoContent handles this case with default header values.


 */
type DeleteReasonNoContent struct {
}

func (o *DeleteReasonNoContent) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] deleteReasonNoContent ", 204)
}

func (o *DeleteReasonNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteReasonInternalServerError creates a DeleteReasonInternalServerError with default headers values
func NewDeleteReasonInternalServerError() *DeleteReasonInternalServerError {
	return &DeleteReasonInternalServerError{}
}

/*DeleteReasonInternalServerError handles this case with default header values.


 */
type DeleteReasonInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteReasonInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] deleteReasonInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteReasonInternalServerError) ToJSONString() string {
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

func (o *DeleteReasonInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteReasonInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
