// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package environment_variables

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// EnvironmentVariableListReader is a Reader for the EnvironmentVariableList structure.
type EnvironmentVariableListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnvironmentVariableListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEnvironmentVariableListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewEnvironmentVariableListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewEnvironmentVariableListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/environment-variables returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnvironmentVariableListOK creates a EnvironmentVariableListOK with default headers values
func NewEnvironmentVariableListOK() *EnvironmentVariableListOK {
	return &EnvironmentVariableListOK{}
}

/*EnvironmentVariableListOK handles this case with default header values.

  Created
*/
type EnvironmentVariableListOK struct {
	Payload *match2clientmodels.APIListEnvironmentVariablesResponse
}

func (o *EnvironmentVariableListOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/environment-variables][%d] environmentVariableListOK  %+v", 200, o.ToJSONString())
}

func (o *EnvironmentVariableListOK) ToJSONString() string {
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

func (o *EnvironmentVariableListOK) GetPayload() *match2clientmodels.APIListEnvironmentVariablesResponse {
	return o.Payload
}

func (o *EnvironmentVariableListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListEnvironmentVariablesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnvironmentVariableListUnauthorized creates a EnvironmentVariableListUnauthorized with default headers values
func NewEnvironmentVariableListUnauthorized() *EnvironmentVariableListUnauthorized {
	return &EnvironmentVariableListUnauthorized{}
}

/*EnvironmentVariableListUnauthorized handles this case with default header values.

  Unauthorized
*/
type EnvironmentVariableListUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *EnvironmentVariableListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/environment-variables][%d] environmentVariableListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *EnvironmentVariableListUnauthorized) ToJSONString() string {
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

func (o *EnvironmentVariableListUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *EnvironmentVariableListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnvironmentVariableListForbidden creates a EnvironmentVariableListForbidden with default headers values
func NewEnvironmentVariableListForbidden() *EnvironmentVariableListForbidden {
	return &EnvironmentVariableListForbidden{}
}

/*EnvironmentVariableListForbidden handles this case with default header values.

  Forbidden
*/
type EnvironmentVariableListForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *EnvironmentVariableListForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/environment-variables][%d] environmentVariableListForbidden  %+v", 403, o.ToJSONString())
}

func (o *EnvironmentVariableListForbidden) ToJSONString() string {
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

func (o *EnvironmentVariableListForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *EnvironmentVariableListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
