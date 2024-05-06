// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package blocks

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

// SyncNativeBlockedUserReader is a Reader for the SyncNativeBlockedUser structure.
type SyncNativeBlockedUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncNativeBlockedUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncNativeBlockedUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncNativeBlockedUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSyncNativeBlockedUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSyncNativeBlockedUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSyncNativeBlockedUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /lobby/sync/namespaces/{namespace}/me/block returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncNativeBlockedUserOK creates a SyncNativeBlockedUserOK with default headers values
func NewSyncNativeBlockedUserOK() *SyncNativeBlockedUserOK {
	return &SyncNativeBlockedUserOK{}
}

/*SyncNativeBlockedUserOK handles this case with default header values.


 */
type SyncNativeBlockedUserOK struct {
	Payload []*lobbyclientmodels.ModelNativeUserBlockResponse
}

func (o *SyncNativeBlockedUserOK) Error() string {
	return fmt.Sprintf("[PATCH /lobby/sync/namespaces/{namespace}/me/block][%d] syncNativeBlockedUserOK  %+v", 200, o.ToJSONString())
}

func (o *SyncNativeBlockedUserOK) ToJSONString() string {
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

func (o *SyncNativeBlockedUserOK) GetPayload() []*lobbyclientmodels.ModelNativeUserBlockResponse {
	return o.Payload
}

func (o *SyncNativeBlockedUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncNativeBlockedUserBadRequest creates a SyncNativeBlockedUserBadRequest with default headers values
func NewSyncNativeBlockedUserBadRequest() *SyncNativeBlockedUserBadRequest {
	return &SyncNativeBlockedUserBadRequest{}
}

/*SyncNativeBlockedUserBadRequest handles this case with default header values.

  Bad Request
*/
type SyncNativeBlockedUserBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeBlockedUserBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /lobby/sync/namespaces/{namespace}/me/block][%d] syncNativeBlockedUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncNativeBlockedUserBadRequest) ToJSONString() string {
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

func (o *SyncNativeBlockedUserBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeBlockedUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncNativeBlockedUserUnauthorized creates a SyncNativeBlockedUserUnauthorized with default headers values
func NewSyncNativeBlockedUserUnauthorized() *SyncNativeBlockedUserUnauthorized {
	return &SyncNativeBlockedUserUnauthorized{}
}

/*SyncNativeBlockedUserUnauthorized handles this case with default header values.

  Unauthorized
*/
type SyncNativeBlockedUserUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeBlockedUserUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /lobby/sync/namespaces/{namespace}/me/block][%d] syncNativeBlockedUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SyncNativeBlockedUserUnauthorized) ToJSONString() string {
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

func (o *SyncNativeBlockedUserUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeBlockedUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncNativeBlockedUserForbidden creates a SyncNativeBlockedUserForbidden with default headers values
func NewSyncNativeBlockedUserForbidden() *SyncNativeBlockedUserForbidden {
	return &SyncNativeBlockedUserForbidden{}
}

/*SyncNativeBlockedUserForbidden handles this case with default header values.

  Forbidden
*/
type SyncNativeBlockedUserForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeBlockedUserForbidden) Error() string {
	return fmt.Sprintf("[PATCH /lobby/sync/namespaces/{namespace}/me/block][%d] syncNativeBlockedUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *SyncNativeBlockedUserForbidden) ToJSONString() string {
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

func (o *SyncNativeBlockedUserForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeBlockedUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncNativeBlockedUserInternalServerError creates a SyncNativeBlockedUserInternalServerError with default headers values
func NewSyncNativeBlockedUserInternalServerError() *SyncNativeBlockedUserInternalServerError {
	return &SyncNativeBlockedUserInternalServerError{}
}

/*SyncNativeBlockedUserInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SyncNativeBlockedUserInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SyncNativeBlockedUserInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /lobby/sync/namespaces/{namespace}/me/block][%d] syncNativeBlockedUserInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SyncNativeBlockedUserInternalServerError) ToJSONString() string {
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

func (o *SyncNativeBlockedUserInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SyncNativeBlockedUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
