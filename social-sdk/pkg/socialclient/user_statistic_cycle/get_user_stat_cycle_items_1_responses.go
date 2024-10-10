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

// GetUserStatCycleItems1Reader is a Reader for the GetUserStatCycleItems1 structure.
type GetUserStatCycleItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserStatCycleItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserStatCycleItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserStatCycleItems1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserStatCycleItems1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserStatCycleItems1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGetUserStatCycleItems1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserStatCycleItems1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserStatCycleItems1OK creates a GetUserStatCycleItems1OK with default headers values
func NewGetUserStatCycleItems1OK() *GetUserStatCycleItems1OK {
	return &GetUserStatCycleItems1OK{}
}

/*GetUserStatCycleItems1OK handles this case with default header values.

  successful operation
*/
type GetUserStatCycleItems1OK struct {
	Payload *socialclientmodels.UserStatCycleItemPagingSlicedResult
}

func (o *GetUserStatCycleItems1OK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserStatCycleItems1OK) ToJSONString() string {
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

func (o *GetUserStatCycleItems1OK) GetPayload() *socialclientmodels.UserStatCycleItemPagingSlicedResult {
	return o.Payload
}

func (o *GetUserStatCycleItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserStatCycleItems1Unauthorized creates a GetUserStatCycleItems1Unauthorized with default headers values
func NewGetUserStatCycleItems1Unauthorized() *GetUserStatCycleItems1Unauthorized {
	return &GetUserStatCycleItems1Unauthorized{}
}

/*GetUserStatCycleItems1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetUserStatCycleItems1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItems1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserStatCycleItems1Unauthorized) ToJSONString() string {
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

func (o *GetUserStatCycleItems1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItems1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserStatCycleItems1Forbidden creates a GetUserStatCycleItems1Forbidden with default headers values
func NewGetUserStatCycleItems1Forbidden() *GetUserStatCycleItems1Forbidden {
	return &GetUserStatCycleItems1Forbidden{}
}

/*GetUserStatCycleItems1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserStatCycleItems1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItems1Forbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserStatCycleItems1Forbidden) ToJSONString() string {
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

func (o *GetUserStatCycleItems1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItems1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserStatCycleItems1NotFound creates a GetUserStatCycleItems1NotFound with default headers values
func NewGetUserStatCycleItems1NotFound() *GetUserStatCycleItems1NotFound {
	return &GetUserStatCycleItems1NotFound{}
}

/*GetUserStatCycleItems1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetUserStatCycleItems1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItems1NotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserStatCycleItems1NotFound) ToJSONString() string {
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

func (o *GetUserStatCycleItems1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItems1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserStatCycleItems1UnprocessableEntity creates a GetUserStatCycleItems1UnprocessableEntity with default headers values
func NewGetUserStatCycleItems1UnprocessableEntity() *GetUserStatCycleItems1UnprocessableEntity {
	return &GetUserStatCycleItems1UnprocessableEntity{}
}

/*GetUserStatCycleItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserStatCycleItems1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *GetUserStatCycleItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GetUserStatCycleItems1UnprocessableEntity) ToJSONString() string {
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

func (o *GetUserStatCycleItems1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserStatCycleItems1InternalServerError creates a GetUserStatCycleItems1InternalServerError with default headers values
func NewGetUserStatCycleItems1InternalServerError() *GetUserStatCycleItems1InternalServerError {
	return &GetUserStatCycleItems1InternalServerError{}
}

/*GetUserStatCycleItems1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetUserStatCycleItems1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItems1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItems1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserStatCycleItems1InternalServerError) ToJSONString() string {
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

func (o *GetUserStatCycleItems1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItems1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
