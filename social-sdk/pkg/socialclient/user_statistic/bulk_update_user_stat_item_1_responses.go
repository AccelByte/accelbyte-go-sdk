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

// BulkUpdateUserStatItem1Reader is a Reader for the BulkUpdateUserStatItem1 structure.
type BulkUpdateUserStatItem1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateUserStatItem1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkUpdateUserStatItem1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkUpdateUserStatItem1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkUpdateUserStatItem1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkUpdateUserStatItem1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateUserStatItem1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkUpdateUserStatItem1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateUserStatItem1OK creates a BulkUpdateUserStatItem1OK with default headers values
func NewBulkUpdateUserStatItem1OK() *BulkUpdateUserStatItem1OK {
	return &BulkUpdateUserStatItem1OK{}
}

/*BulkUpdateUserStatItem1OK handles this case with default header values.

  successful operation
*/
type BulkUpdateUserStatItem1OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkUpdateUserStatItem1OK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1OK) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItem1BadRequest creates a BulkUpdateUserStatItem1BadRequest with default headers values
func NewBulkUpdateUserStatItem1BadRequest() *BulkUpdateUserStatItem1BadRequest {
	return &BulkUpdateUserStatItem1BadRequest{}
}

/*BulkUpdateUserStatItem1BadRequest handles this case with default header values.

  Bad request
*/
type BulkUpdateUserStatItem1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1BadRequest) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItem1Unauthorized creates a BulkUpdateUserStatItem1Unauthorized with default headers values
func NewBulkUpdateUserStatItem1Unauthorized() *BulkUpdateUserStatItem1Unauthorized {
	return &BulkUpdateUserStatItem1Unauthorized{}
}

/*BulkUpdateUserStatItem1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkUpdateUserStatItem1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1Unauthorized) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItem1Forbidden creates a BulkUpdateUserStatItem1Forbidden with default headers values
func NewBulkUpdateUserStatItem1Forbidden() *BulkUpdateUserStatItem1Forbidden {
	return &BulkUpdateUserStatItem1Forbidden{}
}

/*BulkUpdateUserStatItem1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkUpdateUserStatItem1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1Forbidden) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItem1UnprocessableEntity creates a BulkUpdateUserStatItem1UnprocessableEntity with default headers values
func NewBulkUpdateUserStatItem1UnprocessableEntity() *BulkUpdateUserStatItem1UnprocessableEntity {
	return &BulkUpdateUserStatItem1UnprocessableEntity{}
}

/*BulkUpdateUserStatItem1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateUserStatItem1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItem1InternalServerError creates a BulkUpdateUserStatItem1InternalServerError with default headers values
func NewBulkUpdateUserStatItem1InternalServerError() *BulkUpdateUserStatItem1InternalServerError {
	return &BulkUpdateUserStatItem1InternalServerError{}
}

/*BulkUpdateUserStatItem1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkUpdateUserStatItem1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItem1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkUpdateUserStatItem1InternalServerError) ToJSONString() string {
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

func (o *BulkUpdateUserStatItem1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
