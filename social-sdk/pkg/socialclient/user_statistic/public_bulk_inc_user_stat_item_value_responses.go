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

// PublicBulkIncUserStatItemValueReader is a Reader for the PublicBulkIncUserStatItemValue structure.
type PublicBulkIncUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkIncUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkIncUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkIncUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBulkIncUserStatItemValueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicBulkIncUserStatItemValueForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkIncUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkIncUserStatItemValueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkIncUserStatItemValueOK creates a PublicBulkIncUserStatItemValueOK with default headers values
func NewPublicBulkIncUserStatItemValueOK() *PublicBulkIncUserStatItemValueOK {
	return &PublicBulkIncUserStatItemValueOK{}
}

/*PublicBulkIncUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type PublicBulkIncUserStatItemValueOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *PublicBulkIncUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueOK) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemValueBadRequest creates a PublicBulkIncUserStatItemValueBadRequest with default headers values
func NewPublicBulkIncUserStatItemValueBadRequest() *PublicBulkIncUserStatItemValueBadRequest {
	return &PublicBulkIncUserStatItemValueBadRequest{}
}

/*PublicBulkIncUserStatItemValueBadRequest handles this case with default header values.

  Bad request
*/
type PublicBulkIncUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemValueUnauthorized creates a PublicBulkIncUserStatItemValueUnauthorized with default headers values
func NewPublicBulkIncUserStatItemValueUnauthorized() *PublicBulkIncUserStatItemValueUnauthorized {
	return &PublicBulkIncUserStatItemValueUnauthorized{}
}

/*PublicBulkIncUserStatItemValueUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicBulkIncUserStatItemValueUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemValueUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueUnauthorized) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemValueForbidden creates a PublicBulkIncUserStatItemValueForbidden with default headers values
func NewPublicBulkIncUserStatItemValueForbidden() *PublicBulkIncUserStatItemValueForbidden {
	return &PublicBulkIncUserStatItemValueForbidden{}
}

/*PublicBulkIncUserStatItemValueForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicBulkIncUserStatItemValueForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemValueForbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueForbidden) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemValueUnprocessableEntity creates a PublicBulkIncUserStatItemValueUnprocessableEntity with default headers values
func NewPublicBulkIncUserStatItemValueUnprocessableEntity() *PublicBulkIncUserStatItemValueUnprocessableEntity {
	return &PublicBulkIncUserStatItemValueUnprocessableEntity{}
}

/*PublicBulkIncUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkIncUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemValueInternalServerError creates a PublicBulkIncUserStatItemValueInternalServerError with default headers values
func NewPublicBulkIncUserStatItemValueInternalServerError() *PublicBulkIncUserStatItemValueInternalServerError {
	return &PublicBulkIncUserStatItemValueInternalServerError{}
}

/*PublicBulkIncUserStatItemValueInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicBulkIncUserStatItemValueInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemValueInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemValueInternalServerError) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemValueInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
