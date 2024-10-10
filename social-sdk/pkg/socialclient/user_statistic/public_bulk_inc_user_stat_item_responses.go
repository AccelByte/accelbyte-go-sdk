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

// PublicBulkIncUserStatItemReader is a Reader for the PublicBulkIncUserStatItem structure.
type PublicBulkIncUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkIncUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkIncUserStatItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkIncUserStatItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBulkIncUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicBulkIncUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkIncUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkIncUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkIncUserStatItemOK creates a PublicBulkIncUserStatItemOK with default headers values
func NewPublicBulkIncUserStatItemOK() *PublicBulkIncUserStatItemOK {
	return &PublicBulkIncUserStatItemOK{}
}

/*PublicBulkIncUserStatItemOK handles this case with default header values.

  successful operation
*/
type PublicBulkIncUserStatItemOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *PublicBulkIncUserStatItemOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemOK) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemBadRequest creates a PublicBulkIncUserStatItemBadRequest with default headers values
func NewPublicBulkIncUserStatItemBadRequest() *PublicBulkIncUserStatItemBadRequest {
	return &PublicBulkIncUserStatItemBadRequest{}
}

/*PublicBulkIncUserStatItemBadRequest handles this case with default header values.

  Bad request
*/
type PublicBulkIncUserStatItemBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemBadRequest) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemUnauthorized creates a PublicBulkIncUserStatItemUnauthorized with default headers values
func NewPublicBulkIncUserStatItemUnauthorized() *PublicBulkIncUserStatItemUnauthorized {
	return &PublicBulkIncUserStatItemUnauthorized{}
}

/*PublicBulkIncUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicBulkIncUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemUnauthorized) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemForbidden creates a PublicBulkIncUserStatItemForbidden with default headers values
func NewPublicBulkIncUserStatItemForbidden() *PublicBulkIncUserStatItemForbidden {
	return &PublicBulkIncUserStatItemForbidden{}
}

/*PublicBulkIncUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicBulkIncUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemForbidden) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemUnprocessableEntity creates a PublicBulkIncUserStatItemUnprocessableEntity with default headers values
func NewPublicBulkIncUserStatItemUnprocessableEntity() *PublicBulkIncUserStatItemUnprocessableEntity {
	return &PublicBulkIncUserStatItemUnprocessableEntity{}
}

/*PublicBulkIncUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkIncUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicBulkIncUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkIncUserStatItemInternalServerError creates a PublicBulkIncUserStatItemInternalServerError with default headers values
func NewPublicBulkIncUserStatItemInternalServerError() *PublicBulkIncUserStatItemInternalServerError {
	return &PublicBulkIncUserStatItemInternalServerError{}
}

/*PublicBulkIncUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicBulkIncUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkIncUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkIncUserStatItemInternalServerError) ToJSONString() string {
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

func (o *PublicBulkIncUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
