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

// BulkUpdateUserStatItemV2Reader is a Reader for the BulkUpdateUserStatItemV2 structure.
type BulkUpdateUserStatItemV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateUserStatItemV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkUpdateUserStatItemV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkUpdateUserStatItemV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkUpdateUserStatItemV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkUpdateUserStatItemV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateUserStatItemV2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkUpdateUserStatItemV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateUserStatItemV2OK creates a BulkUpdateUserStatItemV2OK with default headers values
func NewBulkUpdateUserStatItemV2OK() *BulkUpdateUserStatItemV2OK {
	return &BulkUpdateUserStatItemV2OK{}
}

/*BulkUpdateUserStatItemV2OK handles this case with default header values.

  successful operation
*/
type BulkUpdateUserStatItemV2OK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkUpdateUserStatItemV2OK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2OK  %+v", 200, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2OK) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2OK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemV2BadRequest creates a BulkUpdateUserStatItemV2BadRequest with default headers values
func NewBulkUpdateUserStatItemV2BadRequest() *BulkUpdateUserStatItemV2BadRequest {
	return &BulkUpdateUserStatItemV2BadRequest{}
}

/*BulkUpdateUserStatItemV2BadRequest handles this case with default header values.

  Bad request
*/
type BulkUpdateUserStatItemV2BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2BadRequest) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemV2Unauthorized creates a BulkUpdateUserStatItemV2Unauthorized with default headers values
func NewBulkUpdateUserStatItemV2Unauthorized() *BulkUpdateUserStatItemV2Unauthorized {
	return &BulkUpdateUserStatItemV2Unauthorized{}
}

/*BulkUpdateUserStatItemV2Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkUpdateUserStatItemV2Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2Unauthorized) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemV2Forbidden creates a BulkUpdateUserStatItemV2Forbidden with default headers values
func NewBulkUpdateUserStatItemV2Forbidden() *BulkUpdateUserStatItemV2Forbidden {
	return &BulkUpdateUserStatItemV2Forbidden{}
}

/*BulkUpdateUserStatItemV2Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkUpdateUserStatItemV2Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2Forbidden) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemV2UnprocessableEntity creates a BulkUpdateUserStatItemV2UnprocessableEntity with default headers values
func NewBulkUpdateUserStatItemV2UnprocessableEntity() *BulkUpdateUserStatItemV2UnprocessableEntity {
	return &BulkUpdateUserStatItemV2UnprocessableEntity{}
}

/*BulkUpdateUserStatItemV2UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateUserStatItemV2UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateUserStatItemV2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2UnprocessableEntity) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemV2InternalServerError creates a BulkUpdateUserStatItemV2InternalServerError with default headers values
func NewBulkUpdateUserStatItemV2InternalServerError() *BulkUpdateUserStatItemV2InternalServerError {
	return &BulkUpdateUserStatItemV2InternalServerError{}
}

/*BulkUpdateUserStatItemV2InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkUpdateUserStatItemV2InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItemV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemV2InternalServerError) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemV2InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
