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

// GetMyZipCodeReader is a Reader for the GetMyZipCode structure.
type GetMyZipCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyZipCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyZipCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyZipCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyZipCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyZipCodeOK creates a GetMyZipCodeOK with default headers values
func NewGetMyZipCodeOK() *GetMyZipCodeOK {
	return &GetMyZipCodeOK{}
}

/*GetMyZipCodeOK handles this case with default header values.

  Successful operation
*/
type GetMyZipCodeOK struct {
	Payload *basicclientmodels.UserZipCode
}

func (o *GetMyZipCodeOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode][%d] getMyZipCodeOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyZipCodeOK) ToJSONString() string {
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

func (o *GetMyZipCodeOK) GetPayload() *basicclientmodels.UserZipCode {
	return o.Payload
}

func (o *GetMyZipCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserZipCode)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyZipCodeUnauthorized creates a GetMyZipCodeUnauthorized with default headers values
func NewGetMyZipCodeUnauthorized() *GetMyZipCodeUnauthorized {
	return &GetMyZipCodeUnauthorized{}
}

/*GetMyZipCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetMyZipCodeUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyZipCodeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode][%d] getMyZipCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyZipCodeUnauthorized) ToJSONString() string {
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

func (o *GetMyZipCodeUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyZipCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetMyZipCodeForbidden creates a GetMyZipCodeForbidden with default headers values
func NewGetMyZipCodeForbidden() *GetMyZipCodeForbidden {
	return &GetMyZipCodeForbidden{}
}

/*GetMyZipCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetMyZipCodeForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyZipCodeForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode][%d] getMyZipCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyZipCodeForbidden) ToJSONString() string {
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

func (o *GetMyZipCodeForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyZipCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
