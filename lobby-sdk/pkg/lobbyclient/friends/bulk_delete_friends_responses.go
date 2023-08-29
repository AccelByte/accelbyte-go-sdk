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

// BulkDeleteFriendsReader is a Reader for the BulkDeleteFriends structure.
type BulkDeleteFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkDeleteFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkDeleteFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkDeleteFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkDeleteFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkDeleteFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkDeleteFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkDeleteFriendsOK creates a BulkDeleteFriendsOK with default headers values
func NewBulkDeleteFriendsOK() *BulkDeleteFriendsOK {
	return &BulkDeleteFriendsOK{}
}

/*BulkDeleteFriendsOK handles this case with default header values.

  number of deleted items (one friendship consists of 2 items)
*/
type BulkDeleteFriendsOK struct {
	Payload *lobbyclientmodels.ModelBulkFriendsResponse
}

func (o *BulkDeleteFriendsOK) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk][%d] bulkDeleteFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkDeleteFriendsOK) ToJSONString() string {
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

func (o *BulkDeleteFriendsOK) GetPayload() *lobbyclientmodels.ModelBulkFriendsResponse {
	return o.Payload
}

func (o *BulkDeleteFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelBulkFriendsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkDeleteFriendsBadRequest creates a BulkDeleteFriendsBadRequest with default headers values
func NewBulkDeleteFriendsBadRequest() *BulkDeleteFriendsBadRequest {
	return &BulkDeleteFriendsBadRequest{}
}

/*BulkDeleteFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type BulkDeleteFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *BulkDeleteFriendsBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk][%d] bulkDeleteFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkDeleteFriendsBadRequest) ToJSONString() string {
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

func (o *BulkDeleteFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *BulkDeleteFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkDeleteFriendsUnauthorized creates a BulkDeleteFriendsUnauthorized with default headers values
func NewBulkDeleteFriendsUnauthorized() *BulkDeleteFriendsUnauthorized {
	return &BulkDeleteFriendsUnauthorized{}
}

/*BulkDeleteFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type BulkDeleteFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *BulkDeleteFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk][%d] bulkDeleteFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkDeleteFriendsUnauthorized) ToJSONString() string {
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

func (o *BulkDeleteFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *BulkDeleteFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkDeleteFriendsForbidden creates a BulkDeleteFriendsForbidden with default headers values
func NewBulkDeleteFriendsForbidden() *BulkDeleteFriendsForbidden {
	return &BulkDeleteFriendsForbidden{}
}

/*BulkDeleteFriendsForbidden handles this case with default header values.

  Forbidden
*/
type BulkDeleteFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *BulkDeleteFriendsForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk][%d] bulkDeleteFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkDeleteFriendsForbidden) ToJSONString() string {
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

func (o *BulkDeleteFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *BulkDeleteFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkDeleteFriendsInternalServerError creates a BulkDeleteFriendsInternalServerError with default headers values
func NewBulkDeleteFriendsInternalServerError() *BulkDeleteFriendsInternalServerError {
	return &BulkDeleteFriendsInternalServerError{}
}

/*BulkDeleteFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type BulkDeleteFriendsInternalServerError struct {
	Payload *lobbyclientmodels.ModelBulkFriendsResponse
}

func (o *BulkDeleteFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/delete/bulk][%d] bulkDeleteFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkDeleteFriendsInternalServerError) ToJSONString() string {
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

func (o *BulkDeleteFriendsInternalServerError) GetPayload() *lobbyclientmodels.ModelBulkFriendsResponse {
	return o.Payload
}

func (o *BulkDeleteFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelBulkFriendsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
