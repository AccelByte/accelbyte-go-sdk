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

// GetTopicByTopicNameReader is a Reader for the GetTopicByTopicName structure.
type GetTopicByTopicNameReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTopicByTopicNameReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTopicByTopicNameOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetTopicByTopicNameUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetTopicByTopicNameForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTopicByTopicNameNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetTopicByTopicNameInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/topics/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTopicByTopicNameOK creates a GetTopicByTopicNameOK with default headers values
func NewGetTopicByTopicNameOK() *GetTopicByTopicNameOK {
	return &GetTopicByTopicNameOK{}
}

/*GetTopicByTopicNameOK handles this case with default header values.

  OK
*/
type GetTopicByTopicNameOK struct {
	Payload *lobbyclientmodels.ModelNotificationTopicResponse
}

func (o *GetTopicByTopicNameOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics/{topic}][%d] getTopicByTopicNameOK  %+v", 200, o.ToJSONString())
}

func (o *GetTopicByTopicNameOK) ToJSONString() string {
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

func (o *GetTopicByTopicNameOK) GetPayload() *lobbyclientmodels.ModelNotificationTopicResponse {
	return o.Payload
}

func (o *GetTopicByTopicNameOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelNotificationTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTopicByTopicNameUnauthorized creates a GetTopicByTopicNameUnauthorized with default headers values
func NewGetTopicByTopicNameUnauthorized() *GetTopicByTopicNameUnauthorized {
	return &GetTopicByTopicNameUnauthorized{}
}

/*GetTopicByTopicNameUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetTopicByTopicNameUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByTopicNameUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics/{topic}][%d] getTopicByTopicNameUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetTopicByTopicNameUnauthorized) ToJSONString() string {
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

func (o *GetTopicByTopicNameUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByTopicNameUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTopicByTopicNameForbidden creates a GetTopicByTopicNameForbidden with default headers values
func NewGetTopicByTopicNameForbidden() *GetTopicByTopicNameForbidden {
	return &GetTopicByTopicNameForbidden{}
}

/*GetTopicByTopicNameForbidden handles this case with default header values.

  Forbidden
*/
type GetTopicByTopicNameForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByTopicNameForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics/{topic}][%d] getTopicByTopicNameForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetTopicByTopicNameForbidden) ToJSONString() string {
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

func (o *GetTopicByTopicNameForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByTopicNameForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTopicByTopicNameNotFound creates a GetTopicByTopicNameNotFound with default headers values
func NewGetTopicByTopicNameNotFound() *GetTopicByTopicNameNotFound {
	return &GetTopicByTopicNameNotFound{}
}

/*GetTopicByTopicNameNotFound handles this case with default header values.

  Not Found
*/
type GetTopicByTopicNameNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByTopicNameNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics/{topic}][%d] getTopicByTopicNameNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTopicByTopicNameNotFound) ToJSONString() string {
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

func (o *GetTopicByTopicNameNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByTopicNameNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTopicByTopicNameInternalServerError creates a GetTopicByTopicNameInternalServerError with default headers values
func NewGetTopicByTopicNameInternalServerError() *GetTopicByTopicNameInternalServerError {
	return &GetTopicByTopicNameInternalServerError{}
}

/*GetTopicByTopicNameInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetTopicByTopicNameInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetTopicByTopicNameInternalServerError) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/topics/{topic}][%d] getTopicByTopicNameInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetTopicByTopicNameInternalServerError) ToJSONString() string {
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

func (o *GetTopicByTopicNameInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetTopicByTopicNameInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
