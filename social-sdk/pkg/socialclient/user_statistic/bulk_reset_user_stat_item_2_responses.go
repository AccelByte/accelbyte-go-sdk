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

// BulkResetUserStatItem2Reader is a Reader for the BulkResetUserStatItem2 structure.
type BulkResetUserStatItem2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkResetUserStatItem2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkResetUserStatItem2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkResetUserStatItem2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkResetUserStatItem2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkResetUserStatItem2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkResetUserStatItem2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkResetUserStatItem2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkResetUserStatItem2OK creates a BulkResetUserStatItem2OK with default headers values
func NewBulkResetUserStatItem2OK() *BulkResetUserStatItem2OK {
	return &BulkResetUserStatItem2OK{}
}

/*BulkResetUserStatItem2OK handles this case with default header values.

  successful operation
*/
type BulkResetUserStatItem2OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkResetUserStatItem2OK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2OK  %+v", 200, o.ToJSONString())
}

func (o *BulkResetUserStatItem2OK) ToJSONString() string {
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

func (o *BulkResetUserStatItem2OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkResetUserStatItem2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem2BadRequest creates a BulkResetUserStatItem2BadRequest with default headers values
func NewBulkResetUserStatItem2BadRequest() *BulkResetUserStatItem2BadRequest {
	return &BulkResetUserStatItem2BadRequest{}
}

/*BulkResetUserStatItem2BadRequest handles this case with default header values.

  Bad request
*/
type BulkResetUserStatItem2BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkResetUserStatItem2BadRequest) ToJSONString() string {
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

func (o *BulkResetUserStatItem2BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem2Unauthorized creates a BulkResetUserStatItem2Unauthorized with default headers values
func NewBulkResetUserStatItem2Unauthorized() *BulkResetUserStatItem2Unauthorized {
	return &BulkResetUserStatItem2Unauthorized{}
}

/*BulkResetUserStatItem2Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkResetUserStatItem2Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkResetUserStatItem2Unauthorized) ToJSONString() string {
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

func (o *BulkResetUserStatItem2Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem2Forbidden creates a BulkResetUserStatItem2Forbidden with default headers values
func NewBulkResetUserStatItem2Forbidden() *BulkResetUserStatItem2Forbidden {
	return &BulkResetUserStatItem2Forbidden{}
}

/*BulkResetUserStatItem2Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkResetUserStatItem2Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkResetUserStatItem2Forbidden) ToJSONString() string {
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

func (o *BulkResetUserStatItem2Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem2UnprocessableEntity creates a BulkResetUserStatItem2UnprocessableEntity with default headers values
func NewBulkResetUserStatItem2UnprocessableEntity() *BulkResetUserStatItem2UnprocessableEntity {
	return &BulkResetUserStatItem2UnprocessableEntity{}
}

/*BulkResetUserStatItem2UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkResetUserStatItem2UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkResetUserStatItem2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkResetUserStatItem2UnprocessableEntity) ToJSONString() string {
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

func (o *BulkResetUserStatItem2UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkResetUserStatItem2InternalServerError creates a BulkResetUserStatItem2InternalServerError with default headers values
func NewBulkResetUserStatItem2InternalServerError() *BulkResetUserStatItem2InternalServerError {
	return &BulkResetUserStatItem2InternalServerError{}
}

/*BulkResetUserStatItem2InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkResetUserStatItem2InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItem2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItem2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkResetUserStatItem2InternalServerError) ToJSONString() string {
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

func (o *BulkResetUserStatItem2InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItem2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
