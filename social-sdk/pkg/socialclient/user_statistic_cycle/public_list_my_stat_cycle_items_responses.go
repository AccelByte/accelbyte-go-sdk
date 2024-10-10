// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic_cycle

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

// PublicListMyStatCycleItemsReader is a Reader for the PublicListMyStatCycleItems structure.
type PublicListMyStatCycleItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListMyStatCycleItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListMyStatCycleItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListMyStatCycleItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListMyStatCycleItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListMyStatCycleItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicListMyStatCycleItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListMyStatCycleItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListMyStatCycleItemsOK creates a PublicListMyStatCycleItemsOK with default headers values
func NewPublicListMyStatCycleItemsOK() *PublicListMyStatCycleItemsOK {
	return &PublicListMyStatCycleItemsOK{}
}

/*PublicListMyStatCycleItemsOK handles this case with default header values.

  successful operation
*/
type PublicListMyStatCycleItemsOK struct {
	Payload *socialclientmodels.UserStatCycleItemPagingSlicedResult
}

func (o *PublicListMyStatCycleItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsOK) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsOK) GetPayload() *socialclientmodels.UserStatCycleItemPagingSlicedResult {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.UserStatCycleItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListMyStatCycleItemsUnauthorized creates a PublicListMyStatCycleItemsUnauthorized with default headers values
func NewPublicListMyStatCycleItemsUnauthorized() *PublicListMyStatCycleItemsUnauthorized {
	return &PublicListMyStatCycleItemsUnauthorized{}
}

/*PublicListMyStatCycleItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicListMyStatCycleItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatCycleItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsUnauthorized) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListMyStatCycleItemsForbidden creates a PublicListMyStatCycleItemsForbidden with default headers values
func NewPublicListMyStatCycleItemsForbidden() *PublicListMyStatCycleItemsForbidden {
	return &PublicListMyStatCycleItemsForbidden{}
}

/*PublicListMyStatCycleItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicListMyStatCycleItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatCycleItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsForbidden) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListMyStatCycleItemsNotFound creates a PublicListMyStatCycleItemsNotFound with default headers values
func NewPublicListMyStatCycleItemsNotFound() *PublicListMyStatCycleItemsNotFound {
	return &PublicListMyStatCycleItemsNotFound{}
}

/*PublicListMyStatCycleItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicListMyStatCycleItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatCycleItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsNotFound) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListMyStatCycleItemsUnprocessableEntity creates a PublicListMyStatCycleItemsUnprocessableEntity with default headers values
func NewPublicListMyStatCycleItemsUnprocessableEntity() *PublicListMyStatCycleItemsUnprocessableEntity {
	return &PublicListMyStatCycleItemsUnprocessableEntity{}
}

/*PublicListMyStatCycleItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListMyStatCycleItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicListMyStatCycleItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListMyStatCycleItemsInternalServerError creates a PublicListMyStatCycleItemsInternalServerError with default headers values
func NewPublicListMyStatCycleItemsInternalServerError() *PublicListMyStatCycleItemsInternalServerError {
	return &PublicListMyStatCycleItemsInternalServerError{}
}

/*PublicListMyStatCycleItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicListMyStatCycleItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatCycleItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems][%d] publicListMyStatCycleItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListMyStatCycleItemsInternalServerError) ToJSONString() string {
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

func (o *PublicListMyStatCycleItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatCycleItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
