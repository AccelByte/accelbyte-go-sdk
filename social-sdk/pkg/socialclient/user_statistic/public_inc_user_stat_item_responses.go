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

// PublicIncUserStatItemReader is a Reader for the PublicIncUserStatItem structure.
type PublicIncUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicIncUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicIncUserStatItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicIncUserStatItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicIncUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicIncUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicIncUserStatItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicIncUserStatItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicIncUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicIncUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicIncUserStatItemOK creates a PublicIncUserStatItemOK with default headers values
func NewPublicIncUserStatItemOK() *PublicIncUserStatItemOK {
	return &PublicIncUserStatItemOK{}
}

/*PublicIncUserStatItemOK handles this case with default header values.

  successful operation
*/
type PublicIncUserStatItemOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *PublicIncUserStatItemOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemOK  %+v", 200, o.ToJSONString())
}

func (o *PublicIncUserStatItemOK) ToJSONString() string {
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

func (o *PublicIncUserStatItemOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *PublicIncUserStatItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatItemIncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicIncUserStatItemBadRequest creates a PublicIncUserStatItemBadRequest with default headers values
func NewPublicIncUserStatItemBadRequest() *PublicIncUserStatItemBadRequest {
	return &PublicIncUserStatItemBadRequest{}
}

/*PublicIncUserStatItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type PublicIncUserStatItemBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicIncUserStatItemBadRequest) ToJSONString() string {
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

func (o *PublicIncUserStatItemBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemUnauthorized creates a PublicIncUserStatItemUnauthorized with default headers values
func NewPublicIncUserStatItemUnauthorized() *PublicIncUserStatItemUnauthorized {
	return &PublicIncUserStatItemUnauthorized{}
}

/*PublicIncUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicIncUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicIncUserStatItemUnauthorized) ToJSONString() string {
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

func (o *PublicIncUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemForbidden creates a PublicIncUserStatItemForbidden with default headers values
func NewPublicIncUserStatItemForbidden() *PublicIncUserStatItemForbidden {
	return &PublicIncUserStatItemForbidden{}
}

/*PublicIncUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicIncUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicIncUserStatItemForbidden) ToJSONString() string {
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

func (o *PublicIncUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemNotFound creates a PublicIncUserStatItemNotFound with default headers values
func NewPublicIncUserStatItemNotFound() *PublicIncUserStatItemNotFound {
	return &PublicIncUserStatItemNotFound{}
}

/*PublicIncUserStatItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicIncUserStatItemNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicIncUserStatItemNotFound) ToJSONString() string {
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

func (o *PublicIncUserStatItemNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemConflict creates a PublicIncUserStatItemConflict with default headers values
func NewPublicIncUserStatItemConflict() *PublicIncUserStatItemConflict {
	return &PublicIncUserStatItemConflict{}
}

/*PublicIncUserStatItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12273</td><td>Stat [{statCode}] is not decreasable</td></tr><tr><td>12275</td><td>[{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]</td></tr></table>
*/
type PublicIncUserStatItemConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemConflict) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicIncUserStatItemConflict) ToJSONString() string {
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

func (o *PublicIncUserStatItemConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemUnprocessableEntity creates a PublicIncUserStatItemUnprocessableEntity with default headers values
func NewPublicIncUserStatItemUnprocessableEntity() *PublicIncUserStatItemUnprocessableEntity {
	return &PublicIncUserStatItemUnprocessableEntity{}
}

/*PublicIncUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicIncUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicIncUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicIncUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *PublicIncUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicIncUserStatItemInternalServerError creates a PublicIncUserStatItemInternalServerError with default headers values
func NewPublicIncUserStatItemInternalServerError() *PublicIncUserStatItemInternalServerError {
	return &PublicIncUserStatItemInternalServerError{}
}

/*PublicIncUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicIncUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicIncUserStatItemInternalServerError) ToJSONString() string {
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

func (o *PublicIncUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
