// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// GetIncomingFriendRequestsReader is a Reader for the GetIncomingFriendRequests structure.
type GetIncomingFriendRequestsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetIncomingFriendRequestsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetIncomingFriendRequestsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetIncomingFriendRequestsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetIncomingFriendRequestsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetIncomingFriendRequestsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetIncomingFriendRequestsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetIncomingFriendRequestsOK creates a GetIncomingFriendRequestsOK with default headers values
func NewGetIncomingFriendRequestsOK() *GetIncomingFriendRequestsOK {
	return &GetIncomingFriendRequestsOK{}
}

/*GetIncomingFriendRequestsOK handles this case with default header values.


 */
type GetIncomingFriendRequestsOK struct {
	Payload *lobbyclientmodels.ModelLoadIncomingFriendsWithTimeResponse
}

func (o *GetIncomingFriendRequestsOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming][%d] getIncomingFriendRequestsOK  %+v", 200, o.ToJSONString())
}

func (o *GetIncomingFriendRequestsOK) ToJSONString() string {
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

func (o *GetIncomingFriendRequestsOK) GetPayload() *lobbyclientmodels.ModelLoadIncomingFriendsWithTimeResponse {
	return o.Payload
}

func (o *GetIncomingFriendRequestsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelLoadIncomingFriendsWithTimeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetIncomingFriendRequestsBadRequest creates a GetIncomingFriendRequestsBadRequest with default headers values
func NewGetIncomingFriendRequestsBadRequest() *GetIncomingFriendRequestsBadRequest {
	return &GetIncomingFriendRequestsBadRequest{}
}

/*GetIncomingFriendRequestsBadRequest handles this case with default header values.

  Bad Request
*/
type GetIncomingFriendRequestsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetIncomingFriendRequestsBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming][%d] getIncomingFriendRequestsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetIncomingFriendRequestsBadRequest) ToJSONString() string {
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

func (o *GetIncomingFriendRequestsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetIncomingFriendRequestsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetIncomingFriendRequestsUnauthorized creates a GetIncomingFriendRequestsUnauthorized with default headers values
func NewGetIncomingFriendRequestsUnauthorized() *GetIncomingFriendRequestsUnauthorized {
	return &GetIncomingFriendRequestsUnauthorized{}
}

/*GetIncomingFriendRequestsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetIncomingFriendRequestsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetIncomingFriendRequestsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming][%d] getIncomingFriendRequestsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetIncomingFriendRequestsUnauthorized) ToJSONString() string {
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

func (o *GetIncomingFriendRequestsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetIncomingFriendRequestsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetIncomingFriendRequestsForbidden creates a GetIncomingFriendRequestsForbidden with default headers values
func NewGetIncomingFriendRequestsForbidden() *GetIncomingFriendRequestsForbidden {
	return &GetIncomingFriendRequestsForbidden{}
}

/*GetIncomingFriendRequestsForbidden handles this case with default header values.

  Forbidden
*/
type GetIncomingFriendRequestsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetIncomingFriendRequestsForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming][%d] getIncomingFriendRequestsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetIncomingFriendRequestsForbidden) ToJSONString() string {
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

func (o *GetIncomingFriendRequestsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetIncomingFriendRequestsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetIncomingFriendRequestsInternalServerError creates a GetIncomingFriendRequestsInternalServerError with default headers values
func NewGetIncomingFriendRequestsInternalServerError() *GetIncomingFriendRequestsInternalServerError {
	return &GetIncomingFriendRequestsInternalServerError{}
}

/*GetIncomingFriendRequestsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetIncomingFriendRequestsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetIncomingFriendRequestsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming][%d] getIncomingFriendRequestsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetIncomingFriendRequestsInternalServerError) ToJSONString() string {
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

func (o *GetIncomingFriendRequestsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetIncomingFriendRequestsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
