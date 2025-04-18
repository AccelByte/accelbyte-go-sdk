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

// GetMyProfileInfoReader is a Reader for the GetMyProfileInfo structure.
type GetMyProfileInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyProfileInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyProfileInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMyProfileInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyProfileInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyProfileInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMyProfileInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/me/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyProfileInfoOK creates a GetMyProfileInfoOK with default headers values
func NewGetMyProfileInfoOK() *GetMyProfileInfoOK {
	return &GetMyProfileInfoOK{}
}

/*GetMyProfileInfoOK handles this case with default header values.

  Successful operation
*/
type GetMyProfileInfoOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *GetMyProfileInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyProfileInfoOK) ToJSONString() string {
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

func (o *GetMyProfileInfoOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *GetMyProfileInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfilePrivateInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyProfileInfoBadRequest creates a GetMyProfileInfoBadRequest with default headers values
func NewGetMyProfileInfoBadRequest() *GetMyProfileInfoBadRequest {
	return &GetMyProfileInfoBadRequest{}
}

/*GetMyProfileInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetMyProfileInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetMyProfileInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMyProfileInfoBadRequest) ToJSONString() string {
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

func (o *GetMyProfileInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyProfileInfoUnauthorized creates a GetMyProfileInfoUnauthorized with default headers values
func NewGetMyProfileInfoUnauthorized() *GetMyProfileInfoUnauthorized {
	return &GetMyProfileInfoUnauthorized{}
}

/*GetMyProfileInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetMyProfileInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyProfileInfoUnauthorized) ToJSONString() string {
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

func (o *GetMyProfileInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyProfileInfoForbidden creates a GetMyProfileInfoForbidden with default headers values
func NewGetMyProfileInfoForbidden() *GetMyProfileInfoForbidden {
	return &GetMyProfileInfoForbidden{}
}

/*GetMyProfileInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetMyProfileInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyProfileInfoForbidden) ToJSONString() string {
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

func (o *GetMyProfileInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyProfileInfoNotFound creates a GetMyProfileInfoNotFound with default headers values
func NewGetMyProfileInfoNotFound() *GetMyProfileInfoNotFound {
	return &GetMyProfileInfoNotFound{}
}

/*GetMyProfileInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>20017</td><td>user not linked</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type GetMyProfileInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMyProfileInfoNotFound) ToJSONString() string {
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

func (o *GetMyProfileInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
