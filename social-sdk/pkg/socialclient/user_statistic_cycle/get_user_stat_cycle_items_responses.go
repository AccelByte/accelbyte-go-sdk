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

// GetUserStatCycleItemsReader is a Reader for the GetUserStatCycleItems structure.
type GetUserStatCycleItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserStatCycleItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserStatCycleItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserStatCycleItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserStatCycleItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserStatCycleItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGetUserStatCycleItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserStatCycleItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserStatCycleItemsOK creates a GetUserStatCycleItemsOK with default headers values
func NewGetUserStatCycleItemsOK() *GetUserStatCycleItemsOK {
	return &GetUserStatCycleItemsOK{}
}

/*GetUserStatCycleItemsOK handles this case with default header values.

  successful operation
*/
type GetUserStatCycleItemsOK struct {
	Payload *socialclientmodels.UserStatCycleItemPagingSlicedResult
}

func (o *GetUserStatCycleItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserStatCycleItemsOK) ToJSONString() string {
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

func (o *GetUserStatCycleItemsOK) GetPayload() *socialclientmodels.UserStatCycleItemPagingSlicedResult {
	return o.Payload
}

func (o *GetUserStatCycleItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStatCycleItemsUnauthorized creates a GetUserStatCycleItemsUnauthorized with default headers values
func NewGetUserStatCycleItemsUnauthorized() *GetUserStatCycleItemsUnauthorized {
	return &GetUserStatCycleItemsUnauthorized{}
}

/*GetUserStatCycleItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetUserStatCycleItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserStatCycleItemsUnauthorized) ToJSONString() string {
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

func (o *GetUserStatCycleItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStatCycleItemsForbidden creates a GetUserStatCycleItemsForbidden with default headers values
func NewGetUserStatCycleItemsForbidden() *GetUserStatCycleItemsForbidden {
	return &GetUserStatCycleItemsForbidden{}
}

/*GetUserStatCycleItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserStatCycleItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserStatCycleItemsForbidden) ToJSONString() string {
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

func (o *GetUserStatCycleItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStatCycleItemsNotFound creates a GetUserStatCycleItemsNotFound with default headers values
func NewGetUserStatCycleItemsNotFound() *GetUserStatCycleItemsNotFound {
	return &GetUserStatCycleItemsNotFound{}
}

/*GetUserStatCycleItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetUserStatCycleItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserStatCycleItemsNotFound) ToJSONString() string {
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

func (o *GetUserStatCycleItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStatCycleItemsUnprocessableEntity creates a GetUserStatCycleItemsUnprocessableEntity with default headers values
func NewGetUserStatCycleItemsUnprocessableEntity() *GetUserStatCycleItemsUnprocessableEntity {
	return &GetUserStatCycleItemsUnprocessableEntity{}
}

/*GetUserStatCycleItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserStatCycleItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *GetUserStatCycleItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GetUserStatCycleItemsUnprocessableEntity) ToJSONString() string {
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

func (o *GetUserStatCycleItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStatCycleItemsInternalServerError creates a GetUserStatCycleItemsInternalServerError with default headers values
func NewGetUserStatCycleItemsInternalServerError() *GetUserStatCycleItemsInternalServerError {
	return &GetUserStatCycleItemsInternalServerError{}
}

/*GetUserStatCycleItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetUserStatCycleItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserStatCycleItemsInternalServerError) ToJSONString() string {
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

func (o *GetUserStatCycleItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
