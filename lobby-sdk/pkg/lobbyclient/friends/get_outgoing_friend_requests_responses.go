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

// GetOutgoingFriendRequestsReader is a Reader for the GetOutgoingFriendRequests structure.
type GetOutgoingFriendRequestsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetOutgoingFriendRequestsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetOutgoingFriendRequestsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetOutgoingFriendRequestsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetOutgoingFriendRequestsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetOutgoingFriendRequestsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetOutgoingFriendRequestsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetOutgoingFriendRequestsOK creates a GetOutgoingFriendRequestsOK with default headers values
func NewGetOutgoingFriendRequestsOK() *GetOutgoingFriendRequestsOK {
	return &GetOutgoingFriendRequestsOK{}
}

/*GetOutgoingFriendRequestsOK handles this case with default header values.


 */
type GetOutgoingFriendRequestsOK struct {
	Payload *lobbyclientmodels.ModelLoadOutgoingFriendsWithTimeResponse
}

func (o *GetOutgoingFriendRequestsOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing][%d] getOutgoingFriendRequestsOK  %+v", 200, o.ToJSONString())
}

func (o *GetOutgoingFriendRequestsOK) ToJSONString() string {
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

func (o *GetOutgoingFriendRequestsOK) GetPayload() *lobbyclientmodels.ModelLoadOutgoingFriendsWithTimeResponse {
	return o.Payload
}

func (o *GetOutgoingFriendRequestsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelLoadOutgoingFriendsWithTimeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetOutgoingFriendRequestsBadRequest creates a GetOutgoingFriendRequestsBadRequest with default headers values
func NewGetOutgoingFriendRequestsBadRequest() *GetOutgoingFriendRequestsBadRequest {
	return &GetOutgoingFriendRequestsBadRequest{}
}

/*GetOutgoingFriendRequestsBadRequest handles this case with default header values.

  Bad Request
*/
type GetOutgoingFriendRequestsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetOutgoingFriendRequestsBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing][%d] getOutgoingFriendRequestsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetOutgoingFriendRequestsBadRequest) ToJSONString() string {
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

func (o *GetOutgoingFriendRequestsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetOutgoingFriendRequestsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOutgoingFriendRequestsUnauthorized creates a GetOutgoingFriendRequestsUnauthorized with default headers values
func NewGetOutgoingFriendRequestsUnauthorized() *GetOutgoingFriendRequestsUnauthorized {
	return &GetOutgoingFriendRequestsUnauthorized{}
}

/*GetOutgoingFriendRequestsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetOutgoingFriendRequestsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetOutgoingFriendRequestsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing][%d] getOutgoingFriendRequestsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetOutgoingFriendRequestsUnauthorized) ToJSONString() string {
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

func (o *GetOutgoingFriendRequestsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetOutgoingFriendRequestsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOutgoingFriendRequestsForbidden creates a GetOutgoingFriendRequestsForbidden with default headers values
func NewGetOutgoingFriendRequestsForbidden() *GetOutgoingFriendRequestsForbidden {
	return &GetOutgoingFriendRequestsForbidden{}
}

/*GetOutgoingFriendRequestsForbidden handles this case with default header values.

  Forbidden
*/
type GetOutgoingFriendRequestsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetOutgoingFriendRequestsForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing][%d] getOutgoingFriendRequestsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetOutgoingFriendRequestsForbidden) ToJSONString() string {
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

func (o *GetOutgoingFriendRequestsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetOutgoingFriendRequestsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOutgoingFriendRequestsInternalServerError creates a GetOutgoingFriendRequestsInternalServerError with default headers values
func NewGetOutgoingFriendRequestsInternalServerError() *GetOutgoingFriendRequestsInternalServerError {
	return &GetOutgoingFriendRequestsInternalServerError{}
}

/*GetOutgoingFriendRequestsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetOutgoingFriendRequestsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetOutgoingFriendRequestsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing][%d] getOutgoingFriendRequestsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetOutgoingFriendRequestsInternalServerError) ToJSONString() string {
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

func (o *GetOutgoingFriendRequestsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetOutgoingFriendRequestsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
