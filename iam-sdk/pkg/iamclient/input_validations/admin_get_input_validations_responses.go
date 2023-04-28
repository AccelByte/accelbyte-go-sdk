// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

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

// AdminGetInputValidationsReader is a Reader for the AdminGetInputValidations structure.
type AdminGetInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInputValidationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInputValidationsOK creates a AdminGetInputValidationsOK with default headers values
func NewAdminGetInputValidationsOK() *AdminGetInputValidationsOK {
	return &AdminGetInputValidationsOK{}
}

/*AdminGetInputValidationsOK handles this case with default header values.

  OK
*/
type AdminGetInputValidationsOK struct {
	Payload *iamclientmodels.ModelInputValidationsResponse
}

func (o *AdminGetInputValidationsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/inputValidations][%d] adminGetInputValidationsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInputValidationsOK) ToJSONString() string {
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

func (o *AdminGetInputValidationsOK) GetPayload() *iamclientmodels.ModelInputValidationsResponse {
	return o.Payload
}

func (o *AdminGetInputValidationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInputValidationsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInputValidationsUnauthorized creates a AdminGetInputValidationsUnauthorized with default headers values
func NewAdminGetInputValidationsUnauthorized() *AdminGetInputValidationsUnauthorized {
	return &AdminGetInputValidationsUnauthorized{}
}

/*AdminGetInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/inputValidations][%d] adminGetInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminGetInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInputValidationsForbidden creates a AdminGetInputValidationsForbidden with default headers values
func NewAdminGetInputValidationsForbidden() *AdminGetInputValidationsForbidden {
	return &AdminGetInputValidationsForbidden{}
}

/*AdminGetInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/inputValidations][%d] adminGetInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminGetInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
