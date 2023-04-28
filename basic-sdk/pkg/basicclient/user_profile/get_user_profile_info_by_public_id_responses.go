// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// GetUserProfileInfoByPublicIDReader is a Reader for the GetUserProfileInfoByPublicID structure.
type GetUserProfileInfoByPublicIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserProfileInfoByPublicIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserProfileInfoByPublicIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserProfileInfoByPublicIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserProfileInfoByPublicIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserProfileInfoByPublicIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserProfileInfoByPublicIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserProfileInfoByPublicIDOK creates a GetUserProfileInfoByPublicIDOK with default headers values
func NewGetUserProfileInfoByPublicIDOK() *GetUserProfileInfoByPublicIDOK {
	return &GetUserProfileInfoByPublicIDOK{}
}

/*GetUserProfileInfoByPublicIDOK handles this case with default header values.

  Successful operation
*/
type GetUserProfileInfoByPublicIDOK struct {
	Payload *basicclientmodels.UserProfileInfo
}

func (o *GetUserProfileInfoByPublicIDOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId][%d] getUserProfileInfoByPublicIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserProfileInfoByPublicIDOK) ToJSONString() string {
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

func (o *GetUserProfileInfoByPublicIDOK) GetPayload() *basicclientmodels.UserProfileInfo {
	return o.Payload
}

func (o *GetUserProfileInfoByPublicIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfileInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserProfileInfoByPublicIDBadRequest creates a GetUserProfileInfoByPublicIDBadRequest with default headers values
func NewGetUserProfileInfoByPublicIDBadRequest() *GetUserProfileInfoByPublicIDBadRequest {
	return &GetUserProfileInfoByPublicIDBadRequest{}
}

/*GetUserProfileInfoByPublicIDBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserProfileInfoByPublicIDBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetUserProfileInfoByPublicIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId][%d] getUserProfileInfoByPublicIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserProfileInfoByPublicIDBadRequest) ToJSONString() string {
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

func (o *GetUserProfileInfoByPublicIDBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoByPublicIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserProfileInfoByPublicIDUnauthorized creates a GetUserProfileInfoByPublicIDUnauthorized with default headers values
func NewGetUserProfileInfoByPublicIDUnauthorized() *GetUserProfileInfoByPublicIDUnauthorized {
	return &GetUserProfileInfoByPublicIDUnauthorized{}
}

/*GetUserProfileInfoByPublicIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetUserProfileInfoByPublicIDUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoByPublicIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId][%d] getUserProfileInfoByPublicIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserProfileInfoByPublicIDUnauthorized) ToJSONString() string {
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

func (o *GetUserProfileInfoByPublicIDUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoByPublicIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserProfileInfoByPublicIDForbidden creates a GetUserProfileInfoByPublicIDForbidden with default headers values
func NewGetUserProfileInfoByPublicIDForbidden() *GetUserProfileInfoByPublicIDForbidden {
	return &GetUserProfileInfoByPublicIDForbidden{}
}

/*GetUserProfileInfoByPublicIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserProfileInfoByPublicIDForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoByPublicIDForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId][%d] getUserProfileInfoByPublicIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserProfileInfoByPublicIDForbidden) ToJSONString() string {
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

func (o *GetUserProfileInfoByPublicIDForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoByPublicIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserProfileInfoByPublicIDNotFound creates a GetUserProfileInfoByPublicIDNotFound with default headers values
func NewGetUserProfileInfoByPublicIDNotFound() *GetUserProfileInfoByPublicIDNotFound {
	return &GetUserProfileInfoByPublicIDNotFound{}
}

/*GetUserProfileInfoByPublicIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11469</td><td>User profile with publicId [{publicId}] not found in namespace [{namespace}]</td></tr></table>
*/
type GetUserProfileInfoByPublicIDNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoByPublicIDNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId][%d] getUserProfileInfoByPublicIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserProfileInfoByPublicIDNotFound) ToJSONString() string {
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

func (o *GetUserProfileInfoByPublicIDNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoByPublicIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
