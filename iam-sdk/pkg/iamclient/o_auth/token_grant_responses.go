// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// TokenGrantReader is a Reader for the TokenGrant structure.
type TokenGrantReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TokenGrantReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTokenGrantOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewTokenGrantBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewTokenGrantUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTokenGrantOK creates a TokenGrantOK with default headers values
func NewTokenGrantOK() *TokenGrantOK {
	return &TokenGrantOK{}
}

/*TokenGrantOK handles this case with default header values.

  Token returned
*/
type TokenGrantOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *TokenGrantOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/token][%d] tokenGrantOK  %+v", 200, o.ToJSONString())
}

func (o *TokenGrantOK) ToJSONString() string {
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

func (o *TokenGrantOK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *TokenGrantOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenGrantBadRequest creates a TokenGrantBadRequest with default headers values
func NewTokenGrantBadRequest() *TokenGrantBadRequest {
	return &TokenGrantBadRequest{}
}

/*TokenGrantBadRequest handles this case with default header values.

  General request error
*/
type TokenGrantBadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/token][%d] tokenGrantBadRequest  %+v", 400, o.ToJSONString())
}

func (o *TokenGrantBadRequest) ToJSONString() string {
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

func (o *TokenGrantBadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenGrantUnauthorized creates a TokenGrantUnauthorized with default headers values
func NewTokenGrantUnauthorized() *TokenGrantUnauthorized {
	return &TokenGrantUnauthorized{}
}

/*TokenGrantUnauthorized handles this case with default header values.

  Client authentication failed
*/
type TokenGrantUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/token][%d] tokenGrantUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *TokenGrantUnauthorized) ToJSONString() string {
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

func (o *TokenGrantUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
