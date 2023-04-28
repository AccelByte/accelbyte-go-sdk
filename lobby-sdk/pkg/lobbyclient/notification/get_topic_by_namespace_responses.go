// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// GetTopicByNamespaceReader is a Reader for the GetTopicByNamespace structure.
type GetTopicByNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTopicByNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTopicByNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetTopicByNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetTopicByNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTopicByNamespaceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetTopicByNamespaceInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTopicByNamespaceOK creates a GetTopicByNamespaceOK with default headers values
func NewGetTopicByNamespaceOK() *GetTopicByNamespaceOK {
	return &GetTopicByNamespaceOK{}
}

/*GetTopicByNamespaceOK handles this case with default header values.

  OK
*/
type GetTopicByNamespaceOK struct {
	Payload *lobbyclientmodels.ModelTopicByNamespacesResponse
}

func (o *GetTopicByNamespaceOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics][%d] getTopicByNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *GetTopicByNamespaceOK) ToJSONString() string {
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

func (o *GetTopicByNamespaceOK) GetPayload() *lobbyclientmodels.ModelTopicByNamespacesResponse {
	return o.Payload
}

func (o *GetTopicByNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelTopicByNamespacesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTopicByNamespaceUnauthorized creates a GetTopicByNamespaceUnauthorized with default headers values
func NewGetTopicByNamespaceUnauthorized() *GetTopicByNamespaceUnauthorized {
	return &GetTopicByNamespaceUnauthorized{}
}

/*GetTopicByNamespaceUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetTopicByNamespaceUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics][%d] getTopicByNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetTopicByNamespaceUnauthorized) ToJSONString() string {
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

func (o *GetTopicByNamespaceUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTopicByNamespaceForbidden creates a GetTopicByNamespaceForbidden with default headers values
func NewGetTopicByNamespaceForbidden() *GetTopicByNamespaceForbidden {
	return &GetTopicByNamespaceForbidden{}
}

/*GetTopicByNamespaceForbidden handles this case with default header values.

  Forbidden
*/
type GetTopicByNamespaceForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByNamespaceForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics][%d] getTopicByNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetTopicByNamespaceForbidden) ToJSONString() string {
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

func (o *GetTopicByNamespaceForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTopicByNamespaceNotFound creates a GetTopicByNamespaceNotFound with default headers values
func NewGetTopicByNamespaceNotFound() *GetTopicByNamespaceNotFound {
	return &GetTopicByNamespaceNotFound{}
}

/*GetTopicByNamespaceNotFound handles this case with default header values.

  Not Found
*/
type GetTopicByNamespaceNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByNamespaceNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics][%d] getTopicByNamespaceNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTopicByNamespaceNotFound) ToJSONString() string {
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

func (o *GetTopicByNamespaceNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByNamespaceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTopicByNamespaceInternalServerError creates a GetTopicByNamespaceInternalServerError with default headers values
func NewGetTopicByNamespaceInternalServerError() *GetTopicByNamespaceInternalServerError {
	return &GetTopicByNamespaceInternalServerError{}
}

/*GetTopicByNamespaceInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetTopicByNamespaceInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByNamespaceInternalServerError) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics][%d] getTopicByNamespaceInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetTopicByNamespaceInternalServerError) ToJSONString() string {
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

func (o *GetTopicByNamespaceInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByNamespaceInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
