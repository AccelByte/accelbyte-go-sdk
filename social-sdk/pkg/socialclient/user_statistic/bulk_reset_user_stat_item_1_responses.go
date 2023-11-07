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

// BulkResetUserStatItem1Reader is a Reader for the BulkResetUserStatItem1 structure.
type BulkResetUserStatItem1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkResetUserStatItem1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkResetUserStatItem1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkResetUserStatItem1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkResetUserStatItem1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkResetUserStatItem1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkResetUserStatItem1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkResetUserStatItem1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkResetUserStatItem1OK creates a BulkResetUserStatItem1OK with default headers values
func NewBulkResetUserStatItem1OK() *BulkResetUserStatItem1OK {
	return &BulkResetUserStatItem1OK{}
}

/*BulkResetUserStatItem1OK handles this case with default header values.

  successful operation
*/
type BulkResetUserStatItem1OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkResetUserStatItem1OK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkResetUserStatItem1OK) ToJSONString() string {
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

func (o *BulkResetUserStatItem1OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkResetUserStatItem1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem1BadRequest creates a BulkResetUserStatItem1BadRequest with default headers values
func NewBulkResetUserStatItem1BadRequest() *BulkResetUserStatItem1BadRequest {
	return &BulkResetUserStatItem1BadRequest{}
}

/*BulkResetUserStatItem1BadRequest handles this case with default header values.

  Bad request
*/
type BulkResetUserStatItem1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkResetUserStatItem1BadRequest) ToJSONString() string {
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

func (o *BulkResetUserStatItem1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem1Unauthorized creates a BulkResetUserStatItem1Unauthorized with default headers values
func NewBulkResetUserStatItem1Unauthorized() *BulkResetUserStatItem1Unauthorized {
	return &BulkResetUserStatItem1Unauthorized{}
}

/*BulkResetUserStatItem1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkResetUserStatItem1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkResetUserStatItem1Unauthorized) ToJSONString() string {
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

func (o *BulkResetUserStatItem1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem1Forbidden creates a BulkResetUserStatItem1Forbidden with default headers values
func NewBulkResetUserStatItem1Forbidden() *BulkResetUserStatItem1Forbidden {
	return &BulkResetUserStatItem1Forbidden{}
}

/*BulkResetUserStatItem1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkResetUserStatItem1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkResetUserStatItem1Forbidden) ToJSONString() string {
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

func (o *BulkResetUserStatItem1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem1UnprocessableEntity creates a BulkResetUserStatItem1UnprocessableEntity with default headers values
func NewBulkResetUserStatItem1UnprocessableEntity() *BulkResetUserStatItem1UnprocessableEntity {
	return &BulkResetUserStatItem1UnprocessableEntity{}
}

/*BulkResetUserStatItem1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkResetUserStatItem1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkResetUserStatItem1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkResetUserStatItem1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkResetUserStatItem1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem1InternalServerError creates a BulkResetUserStatItem1InternalServerError with default headers values
func NewBulkResetUserStatItem1InternalServerError() *BulkResetUserStatItem1InternalServerError {
	return &BulkResetUserStatItem1InternalServerError{}
}

/*BulkResetUserStatItem1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkResetUserStatItem1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItem1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkResetUserStatItem1InternalServerError) ToJSONString() string {
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

func (o *BulkResetUserStatItem1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
