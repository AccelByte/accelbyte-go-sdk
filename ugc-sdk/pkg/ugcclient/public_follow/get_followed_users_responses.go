// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_follow

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// GetFollowedUsersReader is a Reader for the GetFollowedUsers structure.
type GetFollowedUsersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetFollowedUsersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetFollowedUsersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetFollowedUsersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetFollowedUsersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetFollowedUsersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/users/followed returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetFollowedUsersOK creates a GetFollowedUsersOK with default headers values
func NewGetFollowedUsersOK() *GetFollowedUsersOK {
	return &GetFollowedUsersOK{}
}

/*GetFollowedUsersOK handles this case with default header values.

  OK
*/
type GetFollowedUsersOK struct {
	Payload *ugcclientmodels.ModelsPaginatedCreatorOverviewResponse
}

func (o *GetFollowedUsersOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/followed][%d] getFollowedUsersOK  %+v", 200, o.ToJSONString())
}

func (o *GetFollowedUsersOK) ToJSONString() string {
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

func (o *GetFollowedUsersOK) GetPayload() *ugcclientmodels.ModelsPaginatedCreatorOverviewResponse {
	return o.Payload
}

func (o *GetFollowedUsersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedCreatorOverviewResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetFollowedUsersUnauthorized creates a GetFollowedUsersUnauthorized with default headers values
func NewGetFollowedUsersUnauthorized() *GetFollowedUsersUnauthorized {
	return &GetFollowedUsersUnauthorized{}
}

/*GetFollowedUsersUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetFollowedUsersUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetFollowedUsersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/followed][%d] getFollowedUsersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetFollowedUsersUnauthorized) ToJSONString() string {
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

func (o *GetFollowedUsersUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetFollowedUsersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetFollowedUsersNotFound creates a GetFollowedUsersNotFound with default headers values
func NewGetFollowedUsersNotFound() *GetFollowedUsersNotFound {
	return &GetFollowedUsersNotFound{}
}

/*GetFollowedUsersNotFound handles this case with default header values.

  Not Found
*/
type GetFollowedUsersNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetFollowedUsersNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/followed][%d] getFollowedUsersNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetFollowedUsersNotFound) ToJSONString() string {
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

func (o *GetFollowedUsersNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetFollowedUsersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetFollowedUsersInternalServerError creates a GetFollowedUsersInternalServerError with default headers values
func NewGetFollowedUsersInternalServerError() *GetFollowedUsersInternalServerError {
	return &GetFollowedUsersInternalServerError{}
}

/*GetFollowedUsersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetFollowedUsersInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetFollowedUsersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/followed][%d] getFollowedUsersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetFollowedUsersInternalServerError) ToJSONString() string {
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

func (o *GetFollowedUsersInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetFollowedUsersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
