// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_saml_2_0

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PlatformAuthenticateSAMLV3HandlerReader is a Reader for the PlatformAuthenticateSAMLV3Handler structure.
type PlatformAuthenticateSAMLV3HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformAuthenticateSAMLV3HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewPlatformAuthenticateSAMLV3HandlerFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/sso/saml/platforms/{platformId}/authenticate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformAuthenticateSAMLV3HandlerFound creates a PlatformAuthenticateSAMLV3HandlerFound with default headers values
func NewPlatformAuthenticateSAMLV3HandlerFound() *PlatformAuthenticateSAMLV3HandlerFound {
	return &PlatformAuthenticateSAMLV3HandlerFound{}
}

/*PlatformAuthenticateSAMLV3HandlerFound handles this case with default header values.

  Found. Redirect to clients redirection URL with either code or error on the query parameter
*/
type PlatformAuthenticateSAMLV3HandlerFound struct {
	Location string
}

func (o *PlatformAuthenticateSAMLV3HandlerFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/sso/saml/platforms/{platformId}/authenticate][%d] platformAuthenticateSamlV3HandlerFound ", 302)
}

func (o *PlatformAuthenticateSAMLV3HandlerFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
