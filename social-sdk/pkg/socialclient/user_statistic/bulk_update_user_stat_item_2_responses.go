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

// BulkUpdateUserStatItem2Reader is a Reader for the BulkUpdateUserStatItem2 structure.
type BulkUpdateUserStatItem2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateUserStatItem2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkUpdateUserStatItem2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkUpdateUserStatItem2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkUpdateUserStatItem2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkUpdateUserStatItem2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateUserStatItem2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkUpdateUserStatItem2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateUserStatItem2OK creates a BulkUpdateUserStatItem2OK with default headers values
func NewBulkUpdateUserStatItem2OK() *BulkUpdateUserStatItem2OK {
	return &BulkUpdateUserStatItem2OK{}
}

/*BulkUpdateUserStatItem2OK handles this case with default header values.

  successful operation
*/
type BulkUpdateUserStatItem2OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkUpdateUserStatItem2OK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2OK  %+v", 200, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2OK) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateUserStatItem2BadRequest creates a BulkUpdateUserStatItem2BadRequest with default headers values
func NewBulkUpdateUserStatItem2BadRequest() *BulkUpdateUserStatItem2BadRequest {
	return &BulkUpdateUserStatItem2BadRequest{}
}

/*BulkUpdateUserStatItem2BadRequest handles this case with default header values.

  Bad request
*/
type BulkUpdateUserStatItem2BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2BadRequest) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateUserStatItem2Unauthorized creates a BulkUpdateUserStatItem2Unauthorized with default headers values
func NewBulkUpdateUserStatItem2Unauthorized() *BulkUpdateUserStatItem2Unauthorized {
	return &BulkUpdateUserStatItem2Unauthorized{}
}

/*BulkUpdateUserStatItem2Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkUpdateUserStatItem2Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2Unauthorized) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateUserStatItem2Forbidden creates a BulkUpdateUserStatItem2Forbidden with default headers values
func NewBulkUpdateUserStatItem2Forbidden() *BulkUpdateUserStatItem2Forbidden {
	return &BulkUpdateUserStatItem2Forbidden{}
}

/*BulkUpdateUserStatItem2Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkUpdateUserStatItem2Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2Forbidden) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateUserStatItem2UnprocessableEntity creates a BulkUpdateUserStatItem2UnprocessableEntity with default headers values
func NewBulkUpdateUserStatItem2UnprocessableEntity() *BulkUpdateUserStatItem2UnprocessableEntity {
	return &BulkUpdateUserStatItem2UnprocessableEntity{}
}

/*BulkUpdateUserStatItem2UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateUserStatItem2UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateUserStatItem2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2UnprocessableEntity) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateUserStatItem2InternalServerError creates a BulkUpdateUserStatItem2InternalServerError with default headers values
func NewBulkUpdateUserStatItem2InternalServerError() *BulkUpdateUserStatItem2InternalServerError {
	return &BulkUpdateUserStatItem2InternalServerError{}
}

/*BulkUpdateUserStatItem2InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkUpdateUserStatItem2InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItem2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem2InternalServerError) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem2InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
