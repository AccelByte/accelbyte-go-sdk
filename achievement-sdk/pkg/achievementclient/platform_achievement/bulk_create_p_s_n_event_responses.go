// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_achievement

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// BulkCreatePSNEventReader is a Reader for the BulkCreatePSNEvent structure.
type BulkCreatePSNEventReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkCreatePSNEventReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkCreatePSNEventOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkCreatePSNEventUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkCreatePSNEventForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkCreatePSNEventInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkCreatePSNEventOK creates a BulkCreatePSNEventOK with default headers values
func NewBulkCreatePSNEventOK() *BulkCreatePSNEventOK {
	return &BulkCreatePSNEventOK{}
}

/*BulkCreatePSNEventOK handles this case with default header values.

  OK
*/
type BulkCreatePSNEventOK struct {
	Payload *achievementclientmodels.ModelsBulkCreatePSNEventResponse
}

func (o *BulkCreatePSNEventOK) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk][%d] bulkCreatePSNEventOK  %+v", 200, o.ToJSONString())
}

func (o *BulkCreatePSNEventOK) ToJSONString() string {
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

func (o *BulkCreatePSNEventOK) GetPayload() *achievementclientmodels.ModelsBulkCreatePSNEventResponse {
	return o.Payload
}

func (o *BulkCreatePSNEventOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsBulkCreatePSNEventResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreatePSNEventUnauthorized creates a BulkCreatePSNEventUnauthorized with default headers values
func NewBulkCreatePSNEventUnauthorized() *BulkCreatePSNEventUnauthorized {
	return &BulkCreatePSNEventUnauthorized{}
}

/*BulkCreatePSNEventUnauthorized handles this case with default header values.

  Unauthorized
*/
type BulkCreatePSNEventUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *BulkCreatePSNEventUnauthorized) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk][%d] bulkCreatePSNEventUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkCreatePSNEventUnauthorized) ToJSONString() string {
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

func (o *BulkCreatePSNEventUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *BulkCreatePSNEventUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreatePSNEventForbidden creates a BulkCreatePSNEventForbidden with default headers values
func NewBulkCreatePSNEventForbidden() *BulkCreatePSNEventForbidden {
	return &BulkCreatePSNEventForbidden{}
}

/*BulkCreatePSNEventForbidden handles this case with default header values.

  Forbidden
*/
type BulkCreatePSNEventForbidden struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *BulkCreatePSNEventForbidden) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk][%d] bulkCreatePSNEventForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkCreatePSNEventForbidden) ToJSONString() string {
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

func (o *BulkCreatePSNEventForbidden) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *BulkCreatePSNEventForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreatePSNEventInternalServerError creates a BulkCreatePSNEventInternalServerError with default headers values
func NewBulkCreatePSNEventInternalServerError() *BulkCreatePSNEventInternalServerError {
	return &BulkCreatePSNEventInternalServerError{}
}

/*BulkCreatePSNEventInternalServerError handles this case with default header values.

  Internal Server Error
*/
type BulkCreatePSNEventInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *BulkCreatePSNEventInternalServerError) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk][%d] bulkCreatePSNEventInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkCreatePSNEventInternalServerError) ToJSONString() string {
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

func (o *BulkCreatePSNEventInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *BulkCreatePSNEventInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
