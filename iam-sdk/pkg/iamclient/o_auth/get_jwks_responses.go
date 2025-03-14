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

// GetJWKSReader is a Reader for the GetJWKS structure.
type GetJWKSReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetJWKSReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetJWKSOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/oauth/jwks returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetJWKSOK creates a GetJWKSOK with default headers values
func NewGetJWKSOK() *GetJWKSOK {
	return &GetJWKSOK{}
}

/*GetJWKSOK handles this case with default header values.

  JWKS returned
*/
type GetJWKSOK struct {
	Payload *iamclientmodels.OauthcommonJWKSet
}

func (o *GetJWKSOK) Error() string {
	return fmt.Sprintf("[GET /iam/oauth/jwks][%d] getJwksOK  %+v", 200, o.ToJSONString())
}

func (o *GetJWKSOK) ToJSONString() string {
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

func (o *GetJWKSOK) GetPayload() *iamclientmodels.OauthcommonJWKSet {
	return o.Payload
}

func (o *GetJWKSOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthcommonJWKSet)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
