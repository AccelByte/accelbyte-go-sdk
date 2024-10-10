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

// BulkIncUserStatItemValueReader is a Reader for the BulkIncUserStatItemValue structure.
type BulkIncUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkIncUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkIncUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkIncUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkIncUserStatItemValueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkIncUserStatItemValueForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkIncUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkIncUserStatItemValueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkIncUserStatItemValueOK creates a BulkIncUserStatItemValueOK with default headers values
func NewBulkIncUserStatItemValueOK() *BulkIncUserStatItemValueOK {
	return &BulkIncUserStatItemValueOK{}
}

/*BulkIncUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type BulkIncUserStatItemValueOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkIncUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueOK) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkIncUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemValueBadRequest creates a BulkIncUserStatItemValueBadRequest with default headers values
func NewBulkIncUserStatItemValueBadRequest() *BulkIncUserStatItemValueBadRequest {
	return &BulkIncUserStatItemValueBadRequest{}
}

/*BulkIncUserStatItemValueBadRequest handles this case with default header values.

  Bad request
*/
type BulkIncUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemValueUnauthorized creates a BulkIncUserStatItemValueUnauthorized with default headers values
func NewBulkIncUserStatItemValueUnauthorized() *BulkIncUserStatItemValueUnauthorized {
	return &BulkIncUserStatItemValueUnauthorized{}
}

/*BulkIncUserStatItemValueUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkIncUserStatItemValueUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValueUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueUnauthorized) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemValueForbidden creates a BulkIncUserStatItemValueForbidden with default headers values
func NewBulkIncUserStatItemValueForbidden() *BulkIncUserStatItemValueForbidden {
	return &BulkIncUserStatItemValueForbidden{}
}

/*BulkIncUserStatItemValueForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkIncUserStatItemValueForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValueForbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueForbidden) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValueForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemValueUnprocessableEntity creates a BulkIncUserStatItemValueUnprocessableEntity with default headers values
func NewBulkIncUserStatItemValueUnprocessableEntity() *BulkIncUserStatItemValueUnprocessableEntity {
	return &BulkIncUserStatItemValueUnprocessableEntity{}
}

/*BulkIncUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkIncUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkIncUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemValueInternalServerError creates a BulkIncUserStatItemValueInternalServerError with default headers values
func NewBulkIncUserStatItemValueInternalServerError() *BulkIncUserStatItemValueInternalServerError {
	return &BulkIncUserStatItemValueInternalServerError{}
}

/*BulkIncUserStatItemValueInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkIncUserStatItemValueInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemValueInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemValueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkIncUserStatItemValueInternalServerError) ToJSONString() string {
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

func (o *BulkIncUserStatItemValueInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemValueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
