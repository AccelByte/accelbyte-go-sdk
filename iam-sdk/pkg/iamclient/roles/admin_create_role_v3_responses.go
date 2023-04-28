// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// AdminCreateRoleV3Reader is a Reader for the AdminCreateRoleV3 structure.
type AdminCreateRoleV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateRoleV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateRoleV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateRoleV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateRoleV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateRoleV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateRoleV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateRoleV3Created creates a AdminCreateRoleV3Created with default headers values
func NewAdminCreateRoleV3Created() *AdminCreateRoleV3Created {
	return &AdminCreateRoleV3Created{}
}

/*AdminCreateRoleV3Created handles this case with default header values.

  Created
*/
type AdminCreateRoleV3Created struct {
	Payload *iamclientmodels.AccountcommonRoleV3
}

func (o *AdminCreateRoleV3Created) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles][%d] adminCreateRoleV3Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateRoleV3Created) ToJSONString() string {
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

func (o *AdminCreateRoleV3Created) GetPayload() *iamclientmodels.AccountcommonRoleV3 {
	return o.Payload
}

func (o *AdminCreateRoleV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonRoleV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateRoleV3BadRequest creates a AdminCreateRoleV3BadRequest with default headers values
func NewAdminCreateRoleV3BadRequest() *AdminCreateRoleV3BadRequest {
	return &AdminCreateRoleV3BadRequest{}
}

/*AdminCreateRoleV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10466</td><td>invalid role members</td></tr></table>
*/
type AdminCreateRoleV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles][%d] adminCreateRoleV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateRoleV3BadRequest) ToJSONString() string {
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

func (o *AdminCreateRoleV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateRoleV3Unauthorized creates a AdminCreateRoleV3Unauthorized with default headers values
func NewAdminCreateRoleV3Unauthorized() *AdminCreateRoleV3Unauthorized {
	return &AdminCreateRoleV3Unauthorized{}
}

/*AdminCreateRoleV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateRoleV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles][%d] adminCreateRoleV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateRoleV3Unauthorized) ToJSONString() string {
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

func (o *AdminCreateRoleV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateRoleV3Forbidden creates a AdminCreateRoleV3Forbidden with default headers values
func NewAdminCreateRoleV3Forbidden() *AdminCreateRoleV3Forbidden {
	return &AdminCreateRoleV3Forbidden{}
}

/*AdminCreateRoleV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminCreateRoleV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles][%d] adminCreateRoleV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateRoleV3Forbidden) ToJSONString() string {
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

func (o *AdminCreateRoleV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateRoleV3InternalServerError creates a AdminCreateRoleV3InternalServerError with default headers values
func NewAdminCreateRoleV3InternalServerError() *AdminCreateRoleV3InternalServerError {
	return &AdminCreateRoleV3InternalServerError{}
}

/*AdminCreateRoleV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminCreateRoleV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles][%d] adminCreateRoleV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateRoleV3InternalServerError) ToJSONString() string {
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

func (o *AdminCreateRoleV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
