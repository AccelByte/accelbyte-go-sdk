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

// BulkIncUserStatItemValue2Reader is a Reader for the BulkIncUserStatItemValue2 structure.
type BulkIncUserStatItemValue2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkIncUserStatItemValue2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkIncUserStatItemValue2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkIncUserStatItemValue2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkIncUserStatItemValue2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkIncUserStatItemValue2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkIncUserStatItemValue2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkIncUserStatItemValue2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkIncUserStatItemValue2OK creates a BulkIncUserStatItemValue2OK with default headers values
func NewBulkIncUserStatItemValue2OK() *BulkIncUserStatItemValue2OK {
	return &BulkIncUserStatItemValue2OK{}
}

/*BulkIncUserStatItemValue2OK handles this case with default header values.

  successful operation
*/
type BulkIncUserStatItemValue2OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkIncUserStatItemValue2OK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2OK  %+v", 200, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2OK) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkIncUserStatItemValue2BadRequest creates a BulkIncUserStatItemValue2BadRequest with default headers values
func NewBulkIncUserStatItemValue2BadRequest() *BulkIncUserStatItemValue2BadRequest {
	return &BulkIncUserStatItemValue2BadRequest{}
}

/*BulkIncUserStatItemValue2BadRequest handles this case with default header values.

  Bad request
*/
type BulkIncUserStatItemValue2BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2BadRequest) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkIncUserStatItemValue2Unauthorized creates a BulkIncUserStatItemValue2Unauthorized with default headers values
func NewBulkIncUserStatItemValue2Unauthorized() *BulkIncUserStatItemValue2Unauthorized {
	return &BulkIncUserStatItemValue2Unauthorized{}
}

/*BulkIncUserStatItemValue2Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkIncUserStatItemValue2Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2Unauthorized) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkIncUserStatItemValue2Forbidden creates a BulkIncUserStatItemValue2Forbidden with default headers values
func NewBulkIncUserStatItemValue2Forbidden() *BulkIncUserStatItemValue2Forbidden {
	return &BulkIncUserStatItemValue2Forbidden{}
}

/*BulkIncUserStatItemValue2Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkIncUserStatItemValue2Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2Forbidden) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkIncUserStatItemValue2UnprocessableEntity creates a BulkIncUserStatItemValue2UnprocessableEntity with default headers values
func NewBulkIncUserStatItemValue2UnprocessableEntity() *BulkIncUserStatItemValue2UnprocessableEntity {
	return &BulkIncUserStatItemValue2UnprocessableEntity{}
}

/*BulkIncUserStatItemValue2UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkIncUserStatItemValue2UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkIncUserStatItemValue2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2UnprocessableEntity) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkIncUserStatItemValue2InternalServerError creates a BulkIncUserStatItemValue2InternalServerError with default headers values
func NewBulkIncUserStatItemValue2InternalServerError() *BulkIncUserStatItemValue2InternalServerError {
	return &BulkIncUserStatItemValue2InternalServerError{}
}

/*BulkIncUserStatItemValue2InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkIncUserStatItemValue2InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValue2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkIncUserStatItemValue2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkIncUserStatItemValue2InternalServerError) ToJSONString() string {
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

func (o *BulkIncUserStatItemValue2InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValue2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
