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

// SyncNativeFriendsReader is a Reader for the SyncNativeFriends structure.
type SyncNativeFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncNativeFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncNativeFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncNativeFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSyncNativeFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSyncNativeFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSyncNativeFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /friends/sync/namespaces/{namespace}/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncNativeFriendsOK creates a SyncNativeFriendsOK with default headers values
func NewSyncNativeFriendsOK() *SyncNativeFriendsOK {
	return &SyncNativeFriendsOK{}
}

/*SyncNativeFriendsOK handles this case with default header values.


 */
type SyncNativeFriendsOK struct {
	Payload []*lobbyclientmodels.ModelNativeFriendSyncResponse
}

func (o *SyncNativeFriendsOK) Error() string {
	return fmt.Sprintf("[PATCH /friends/sync/namespaces/{namespace}/me][%d] syncNativeFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *SyncNativeFriendsOK) ToJSONString() string {
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

func (o *SyncNativeFriendsOK) GetPayload() []*lobbyclientmodels.ModelNativeFriendSyncResponse {
	return o.Payload
}

func (o *SyncNativeFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncNativeFriendsBadRequest creates a SyncNativeFriendsBadRequest with default headers values
func NewSyncNativeFriendsBadRequest() *SyncNativeFriendsBadRequest {
	return &SyncNativeFriendsBadRequest{}
}

/*SyncNativeFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type SyncNativeFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeFriendsBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /friends/sync/namespaces/{namespace}/me][%d] syncNativeFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncNativeFriendsBadRequest) ToJSONString() string {
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

func (o *SyncNativeFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncNativeFriendsUnauthorized creates a SyncNativeFriendsUnauthorized with default headers values
func NewSyncNativeFriendsUnauthorized() *SyncNativeFriendsUnauthorized {
	return &SyncNativeFriendsUnauthorized{}
}

/*SyncNativeFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type SyncNativeFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /friends/sync/namespaces/{namespace}/me][%d] syncNativeFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SyncNativeFriendsUnauthorized) ToJSONString() string {
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

func (o *SyncNativeFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncNativeFriendsForbidden creates a SyncNativeFriendsForbidden with default headers values
func NewSyncNativeFriendsForbidden() *SyncNativeFriendsForbidden {
	return &SyncNativeFriendsForbidden{}
}

/*SyncNativeFriendsForbidden handles this case with default header values.

  Forbidden
*/
type SyncNativeFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeFriendsForbidden) Error() string {
	return fmt.Sprintf("[PATCH /friends/sync/namespaces/{namespace}/me][%d] syncNativeFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *SyncNativeFriendsForbidden) ToJSONString() string {
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

func (o *SyncNativeFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncNativeFriendsInternalServerError creates a SyncNativeFriendsInternalServerError with default headers values
func NewSyncNativeFriendsInternalServerError() *SyncNativeFriendsInternalServerError {
	return &SyncNativeFriendsInternalServerError{}
}

/*SyncNativeFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SyncNativeFriendsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /friends/sync/namespaces/{namespace}/me][%d] syncNativeFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SyncNativeFriendsInternalServerError) ToJSONString() string {
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

func (o *SyncNativeFriendsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
