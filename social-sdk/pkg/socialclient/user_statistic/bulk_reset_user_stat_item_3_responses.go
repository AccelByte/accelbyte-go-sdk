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

// BulkResetUserStatItem3Reader is a Reader for the BulkResetUserStatItem3 structure.
type BulkResetUserStatItem3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkResetUserStatItem3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkResetUserStatItem3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkResetUserStatItem3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkResetUserStatItem3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkResetUserStatItem3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkResetUserStatItem3UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkResetUserStatItem3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkResetUserStatItem3OK creates a BulkResetUserStatItem3OK with default headers values
func NewBulkResetUserStatItem3OK() *BulkResetUserStatItem3OK {
	return &BulkResetUserStatItem3OK{}
}

/*BulkResetUserStatItem3OK handles this case with default header values.

  successful operation
*/
type BulkResetUserStatItem3OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkResetUserStatItem3OK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3OK  %+v", 200, o.ToJSONString())
}

func (o *BulkResetUserStatItem3OK) ToJSONString() string {
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

func (o *BulkResetUserStatItem3OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkResetUserStatItem3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkResetUserStatItem3BadRequest creates a BulkResetUserStatItem3BadRequest with default headers values
func NewBulkResetUserStatItem3BadRequest() *BulkResetUserStatItem3BadRequest {
	return &BulkResetUserStatItem3BadRequest{}
}

/*BulkResetUserStatItem3BadRequest handles this case with default header values.

  Bad request
*/
type BulkResetUserStatItem3BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkResetUserStatItem3BadRequest) ToJSONString() string {
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

func (o *BulkResetUserStatItem3BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkResetUserStatItem3Unauthorized creates a BulkResetUserStatItem3Unauthorized with default headers values
func NewBulkResetUserStatItem3Unauthorized() *BulkResetUserStatItem3Unauthorized {
	return &BulkResetUserStatItem3Unauthorized{}
}

/*BulkResetUserStatItem3Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkResetUserStatItem3Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkResetUserStatItem3Unauthorized) ToJSONString() string {
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

func (o *BulkResetUserStatItem3Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkResetUserStatItem3Forbidden creates a BulkResetUserStatItem3Forbidden with default headers values
func NewBulkResetUserStatItem3Forbidden() *BulkResetUserStatItem3Forbidden {
	return &BulkResetUserStatItem3Forbidden{}
}

/*BulkResetUserStatItem3Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkResetUserStatItem3Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkResetUserStatItem3Forbidden) ToJSONString() string {
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

func (o *BulkResetUserStatItem3Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkResetUserStatItem3UnprocessableEntity creates a BulkResetUserStatItem3UnprocessableEntity with default headers values
func NewBulkResetUserStatItem3UnprocessableEntity() *BulkResetUserStatItem3UnprocessableEntity {
	return &BulkResetUserStatItem3UnprocessableEntity{}
}

/*BulkResetUserStatItem3UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkResetUserStatItem3UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkResetUserStatItem3UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkResetUserStatItem3UnprocessableEntity) ToJSONString() string {
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

func (o *BulkResetUserStatItem3UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem3UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkResetUserStatItem3InternalServerError creates a BulkResetUserStatItem3InternalServerError with default headers values
func NewBulkResetUserStatItem3InternalServerError() *BulkResetUserStatItem3InternalServerError {
	return &BulkResetUserStatItem3InternalServerError{}
}

/*BulkResetUserStatItem3InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkResetUserStatItem3InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkResetUserStatItem3InternalServerError) ToJSONString() string {
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

func (o *BulkResetUserStatItem3InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
