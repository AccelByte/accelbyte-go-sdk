// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminBulkGetUsersPlatformReader is a Reader for the AdminBulkGetUsersPlatform structure.
type AdminBulkGetUsersPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkGetUsersPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkGetUsersPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkGetUsersPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkGetUsersPlatformInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkGetUsersPlatformOK creates a AdminBulkGetUsersPlatformOK with default headers values
func NewAdminBulkGetUsersPlatformOK() *AdminBulkGetUsersPlatformOK {
	return &AdminBulkGetUsersPlatformOK{}
}

/*AdminBulkGetUsersPlatformOK handles this case with default header values.

  OK
*/
type AdminBulkGetUsersPlatformOK struct {
	Payload *iamclientmodels.ModelListBulkUserPlatformsResponse
}

func (o *AdminBulkGetUsersPlatformOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms][%d] adminBulkGetUsersPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkGetUsersPlatformOK) ToJSONString() string {
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

func (o *AdminBulkGetUsersPlatformOK) GetPayload() *iamclientmodels.ModelListBulkUserPlatformsResponse {
	return o.Payload
}

func (o *AdminBulkGetUsersPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListBulkUserPlatformsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetUsersPlatformBadRequest creates a AdminBulkGetUsersPlatformBadRequest with default headers values
func NewAdminBulkGetUsersPlatformBadRequest() *AdminBulkGetUsersPlatformBadRequest {
	return &AdminBulkGetUsersPlatformBadRequest{}
}

/*AdminBulkGetUsersPlatformBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10185</td><td>publisher namespace not allowed</td></tr></table>
*/
type AdminBulkGetUsersPlatformBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkGetUsersPlatformBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms][%d] adminBulkGetUsersPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkGetUsersPlatformBadRequest) ToJSONString() string {
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

func (o *AdminBulkGetUsersPlatformBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkGetUsersPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetUsersPlatformInternalServerError creates a AdminBulkGetUsersPlatformInternalServerError with default headers values
func NewAdminBulkGetUsersPlatformInternalServerError() *AdminBulkGetUsersPlatformInternalServerError {
	return &AdminBulkGetUsersPlatformInternalServerError{}
}

/*AdminBulkGetUsersPlatformInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBulkGetUsersPlatformInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkGetUsersPlatformInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms][%d] adminBulkGetUsersPlatformInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkGetUsersPlatformInternalServerError) ToJSONString() string {
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

func (o *AdminBulkGetUsersPlatformInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkGetUsersPlatformInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
