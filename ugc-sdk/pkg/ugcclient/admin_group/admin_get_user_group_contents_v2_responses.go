// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// AdminGetUserGroupContentsV2Reader is a Reader for the AdminGetUserGroupContentsV2 structure.
type AdminGetUserGroupContentsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserGroupContentsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserGroupContentsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserGroupContentsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserGroupContentsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserGroupContentsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserGroupContentsV2OK creates a AdminGetUserGroupContentsV2OK with default headers values
func NewAdminGetUserGroupContentsV2OK() *AdminGetUserGroupContentsV2OK {
	return &AdminGetUserGroupContentsV2OK{}
}

/*AdminGetUserGroupContentsV2OK handles this case with default header values.

  OK
*/
type AdminGetUserGroupContentsV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *AdminGetUserGroupContentsV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetUserGroupContentsV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserGroupContentsV2OK) ToJSONString() string {
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

func (o *AdminGetUserGroupContentsV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetUserGroupContentsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserGroupContentsV2Unauthorized creates a AdminGetUserGroupContentsV2Unauthorized with default headers values
func NewAdminGetUserGroupContentsV2Unauthorized() *AdminGetUserGroupContentsV2Unauthorized {
	return &AdminGetUserGroupContentsV2Unauthorized{}
}

/*AdminGetUserGroupContentsV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserGroupContentsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserGroupContentsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetUserGroupContentsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserGroupContentsV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserGroupContentsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserGroupContentsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserGroupContentsV2NotFound creates a AdminGetUserGroupContentsV2NotFound with default headers values
func NewAdminGetUserGroupContentsV2NotFound() *AdminGetUserGroupContentsV2NotFound {
	return &AdminGetUserGroupContentsV2NotFound{}
}

/*AdminGetUserGroupContentsV2NotFound handles this case with default header values.

  Not Found
*/
type AdminGetUserGroupContentsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserGroupContentsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetUserGroupContentsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserGroupContentsV2NotFound) ToJSONString() string {
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

func (o *AdminGetUserGroupContentsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserGroupContentsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserGroupContentsV2InternalServerError creates a AdminGetUserGroupContentsV2InternalServerError with default headers values
func NewAdminGetUserGroupContentsV2InternalServerError() *AdminGetUserGroupContentsV2InternalServerError {
	return &AdminGetUserGroupContentsV2InternalServerError{}
}

/*AdminGetUserGroupContentsV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserGroupContentsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserGroupContentsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetUserGroupContentsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserGroupContentsV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserGroupContentsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserGroupContentsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
