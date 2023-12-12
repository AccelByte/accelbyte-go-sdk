// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// PublicTopicListReader is a Reader for the PublicTopicList structure.
type PublicTopicListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicTopicListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicTopicListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicTopicListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicTopicListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicTopicListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicTopicListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/public/namespaces/{namespace}/topic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicTopicListOK creates a PublicTopicListOK with default headers values
func NewPublicTopicListOK() *PublicTopicListOK {
	return &PublicTopicListOK{}
}

/*PublicTopicListOK handles this case with default header values.

  OK
*/
type PublicTopicListOK struct {
	Payload []*chatclientmodels.ModelsChatMessageResponse
}

func (o *PublicTopicListOK) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic][%d] publicTopicListOK  %+v", 200, o.ToJSONString())
}

func (o *PublicTopicListOK) ToJSONString() string {
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

func (o *PublicTopicListOK) GetPayload() []*chatclientmodels.ModelsChatMessageResponse {
	return o.Payload
}

func (o *PublicTopicListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicTopicListBadRequest creates a PublicTopicListBadRequest with default headers values
func NewPublicTopicListBadRequest() *PublicTopicListBadRequest {
	return &PublicTopicListBadRequest{}
}

/*PublicTopicListBadRequest handles this case with default header values.

  Bad Request
*/
type PublicTopicListBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicTopicListBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic][%d] publicTopicListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicTopicListBadRequest) ToJSONString() string {
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

func (o *PublicTopicListBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicTopicListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicTopicListUnauthorized creates a PublicTopicListUnauthorized with default headers values
func NewPublicTopicListUnauthorized() *PublicTopicListUnauthorized {
	return &PublicTopicListUnauthorized{}
}

/*PublicTopicListUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicTopicListUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicTopicListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic][%d] publicTopicListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicTopicListUnauthorized) ToJSONString() string {
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

func (o *PublicTopicListUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicTopicListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicTopicListForbidden creates a PublicTopicListForbidden with default headers values
func NewPublicTopicListForbidden() *PublicTopicListForbidden {
	return &PublicTopicListForbidden{}
}

/*PublicTopicListForbidden handles this case with default header values.

  Forbidden
*/
type PublicTopicListForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicTopicListForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic][%d] publicTopicListForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicTopicListForbidden) ToJSONString() string {
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

func (o *PublicTopicListForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicTopicListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicTopicListInternalServerError creates a PublicTopicListInternalServerError with default headers values
func NewPublicTopicListInternalServerError() *PublicTopicListInternalServerError {
	return &PublicTopicListInternalServerError{}
}

/*PublicTopicListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicTopicListInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicTopicListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic][%d] publicTopicListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicTopicListInternalServerError) ToJSONString() string {
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

func (o *PublicTopicListInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicTopicListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
