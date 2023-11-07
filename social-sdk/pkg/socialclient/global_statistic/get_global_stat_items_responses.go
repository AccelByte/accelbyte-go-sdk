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

// GetGlobalStatItemsReader is a Reader for the GetGlobalStatItems structure.
type GetGlobalStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGlobalStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGlobalStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGlobalStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGlobalStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGlobalStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/globalstatitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGlobalStatItemsOK creates a GetGlobalStatItemsOK with default headers values
func NewGetGlobalStatItemsOK() *GetGlobalStatItemsOK {
	return &GetGlobalStatItemsOK{}
}

/*GetGlobalStatItemsOK handles this case with default header values.

  successful operation
*/
type GetGlobalStatItemsOK struct {
	Payload *socialclientmodels.GlobalStatItemPagingSlicedResult
}

func (o *GetGlobalStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *GetGlobalStatItemsOK) ToJSONString() string {
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

func (o *GetGlobalStatItemsOK) GetPayload() *socialclientmodels.GlobalStatItemPagingSlicedResult {
	return o.Payload
}

func (o *GetGlobalStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGlobalStatItemsUnauthorized creates a GetGlobalStatItemsUnauthorized with default headers values
func NewGetGlobalStatItemsUnauthorized() *GetGlobalStatItemsUnauthorized {
	return &GetGlobalStatItemsUnauthorized{}
}

/*GetGlobalStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetGlobalStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGlobalStatItemsUnauthorized) ToJSONString() string {
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

func (o *GetGlobalStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGlobalStatItemsForbidden creates a GetGlobalStatItemsForbidden with default headers values
func NewGetGlobalStatItemsForbidden() *GetGlobalStatItemsForbidden {
	return &GetGlobalStatItemsForbidden{}
}

/*GetGlobalStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetGlobalStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGlobalStatItemsForbidden) ToJSONString() string {
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

func (o *GetGlobalStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGlobalStatItemsInternalServerError creates a GetGlobalStatItemsInternalServerError with default headers values
func NewGetGlobalStatItemsInternalServerError() *GetGlobalStatItemsInternalServerError {
	return &GetGlobalStatItemsInternalServerError{}
}

/*GetGlobalStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetGlobalStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems][%d] getGlobalStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGlobalStatItemsInternalServerError) ToJSONString() string {
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

func (o *GetGlobalStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
