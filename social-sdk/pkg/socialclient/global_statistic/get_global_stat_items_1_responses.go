// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_statistic

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

// GetGlobalStatItems1Reader is a Reader for the GetGlobalStatItems1 structure.
type GetGlobalStatItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGlobalStatItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGlobalStatItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGlobalStatItems1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGlobalStatItems1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGlobalStatItems1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/globalstatitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGlobalStatItems1OK creates a GetGlobalStatItems1OK with default headers values
func NewGetGlobalStatItems1OK() *GetGlobalStatItems1OK {
	return &GetGlobalStatItems1OK{}
}

/*GetGlobalStatItems1OK handles this case with default header values.

  successful operation
*/
type GetGlobalStatItems1OK struct {
	Payload *socialclientmodels.GlobalStatItemPagingSlicedResult
}

func (o *GetGlobalStatItems1OK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItems1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGlobalStatItems1OK) ToJSONString() string {
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

func (o *GetGlobalStatItems1OK) GetPayload() *socialclientmodels.GlobalStatItemPagingSlicedResult {
	return o.Payload
}

func (o *GetGlobalStatItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.GlobalStatItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGlobalStatItems1Unauthorized creates a GetGlobalStatItems1Unauthorized with default headers values
func NewGetGlobalStatItems1Unauthorized() *GetGlobalStatItems1Unauthorized {
	return &GetGlobalStatItems1Unauthorized{}
}

/*GetGlobalStatItems1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetGlobalStatItems1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItems1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItems1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGlobalStatItems1Unauthorized) ToJSONString() string {
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

func (o *GetGlobalStatItems1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItems1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGlobalStatItems1Forbidden creates a GetGlobalStatItems1Forbidden with default headers values
func NewGetGlobalStatItems1Forbidden() *GetGlobalStatItems1Forbidden {
	return &GetGlobalStatItems1Forbidden{}
}

/*GetGlobalStatItems1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetGlobalStatItems1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItems1Forbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItems1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGlobalStatItems1Forbidden) ToJSONString() string {
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

func (o *GetGlobalStatItems1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItems1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGlobalStatItems1InternalServerError creates a GetGlobalStatItems1InternalServerError with default headers values
func NewGetGlobalStatItems1InternalServerError() *GetGlobalStatItems1InternalServerError {
	return &GetGlobalStatItems1InternalServerError{}
}

/*GetGlobalStatItems1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetGlobalStatItems1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItems1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItems1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGlobalStatItems1InternalServerError) ToJSONString() string {
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

func (o *GetGlobalStatItems1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItems1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
