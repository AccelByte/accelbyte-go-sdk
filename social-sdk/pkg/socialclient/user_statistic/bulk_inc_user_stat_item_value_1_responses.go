// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkIncUserStatItemValue1Reader is a Reader for the BulkIncUserStatItemValue1 structure.
type BulkIncUserStatItemValue1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkIncUserStatItemValue1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkIncUserStatItemValue1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkIncUserStatItemValue1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkIncUserStatItemValue1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkIncUserStatItemValue1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkIncUserStatItemValue1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkIncUserStatItemValue1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkIncUserStatItemValue1OK creates a BulkIncUserStatItemValue1OK with default headers values
func NewBulkIncUserStatItemValue1OK() *BulkIncUserStatItemValue1OK {
	return &BulkIncUserStatItemValue1OK{}
}

/*BulkIncUserStatItemValue1OK handles this case with default header values.

  successful operation
*/
type BulkIncUserStatItemValue1OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkIncUserStatItemValue1OK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1OK) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkIncUserStatItemValue1BadRequest creates a BulkIncUserStatItemValue1BadRequest with default headers values
func NewBulkIncUserStatItemValue1BadRequest() *BulkIncUserStatItemValue1BadRequest {
	return &BulkIncUserStatItemValue1BadRequest{}
}

/*BulkIncUserStatItemValue1BadRequest handles this case with default header values.

  Bad request
*/
type BulkIncUserStatItemValue1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1BadRequest) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkIncUserStatItemValue1Unauthorized creates a BulkIncUserStatItemValue1Unauthorized with default headers values
func NewBulkIncUserStatItemValue1Unauthorized() *BulkIncUserStatItemValue1Unauthorized {
	return &BulkIncUserStatItemValue1Unauthorized{}
}

/*BulkIncUserStatItemValue1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkIncUserStatItemValue1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1Unauthorized) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkIncUserStatItemValue1Forbidden creates a BulkIncUserStatItemValue1Forbidden with default headers values
func NewBulkIncUserStatItemValue1Forbidden() *BulkIncUserStatItemValue1Forbidden {
	return &BulkIncUserStatItemValue1Forbidden{}
}

/*BulkIncUserStatItemValue1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkIncUserStatItemValue1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1Forbidden) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkIncUserStatItemValue1UnprocessableEntity creates a BulkIncUserStatItemValue1UnprocessableEntity with default headers values
func NewBulkIncUserStatItemValue1UnprocessableEntity() *BulkIncUserStatItemValue1UnprocessableEntity {
	return &BulkIncUserStatItemValue1UnprocessableEntity{}
}

/*BulkIncUserStatItemValue1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkIncUserStatItemValue1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkIncUserStatItemValue1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkIncUserStatItemValue1InternalServerError creates a BulkIncUserStatItemValue1InternalServerError with default headers values
func NewBulkIncUserStatItemValue1InternalServerError() *BulkIncUserStatItemValue1InternalServerError {
	return &BulkIncUserStatItemValue1InternalServerError{}
}

/*BulkIncUserStatItemValue1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkIncUserStatItemValue1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue1InternalServerError) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
