// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params creates a new RetrieveAllThirdPartyLoginPlatformCredentialV3Params object
// with the default values initialized.
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params() *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithTimeout creates a new RetrieveAllThirdPartyLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithTimeout(timeout time.Duration) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Params{

		timeout: timeout,
	}
}

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithContext creates a new RetrieveAllThirdPartyLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithContext(ctx context.Context) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Params{

		Context: ctx,
	}
}

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithHTTPClient creates a new RetrieveAllThirdPartyLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3ParamsWithHTTPClient(client *http.Client) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	var ()
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Params{
		HTTPClient: client,
	}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3Params contains all the parameters to send to the API endpoint
for the retrieve all third party login platform credential v3 operation typically these are written to a http.Request
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) WithTimeout(timeout time.Duration) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) WithContext(ctx context.Context) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) WithHTTPClient(client *http.Client) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) WithNamespace(namespace string) *RetrieveAllThirdPartyLoginPlatformCredentialV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all third party login platform credential v3 params
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
