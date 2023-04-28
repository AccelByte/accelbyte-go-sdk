// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// NewAdminGetPartyDataV1Params creates a new AdminGetPartyDataV1Params object
// with the default values initialized.
func NewAdminGetPartyDataV1Params() *AdminGetPartyDataV1Params {
	var ()
	return &AdminGetPartyDataV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPartyDataV1ParamsWithTimeout creates a new AdminGetPartyDataV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPartyDataV1ParamsWithTimeout(timeout time.Duration) *AdminGetPartyDataV1Params {
	var ()
	return &AdminGetPartyDataV1Params{

		timeout: timeout,
	}
}

// NewAdminGetPartyDataV1ParamsWithContext creates a new AdminGetPartyDataV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPartyDataV1ParamsWithContext(ctx context.Context) *AdminGetPartyDataV1Params {
	var ()
	return &AdminGetPartyDataV1Params{

		Context: ctx,
	}
}

// NewAdminGetPartyDataV1ParamsWithHTTPClient creates a new AdminGetPartyDataV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPartyDataV1ParamsWithHTTPClient(client *http.Client) *AdminGetPartyDataV1Params {
	var ()
	return &AdminGetPartyDataV1Params{
		HTTPClient: client,
	}
}

/*AdminGetPartyDataV1Params contains all the parameters to send to the API endpoint
for the admin get party data v1 operation typically these are written to a http.Request
*/
type AdminGetPartyDataV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*PartyID
	  party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) WithTimeout(timeout time.Duration) *AdminGetPartyDataV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) WithContext(ctx context.Context) *AdminGetPartyDataV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) WithHTTPClient(client *http.Client) *AdminGetPartyDataV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) WithNamespace(namespace string) *AdminGetPartyDataV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) WithPartyID(partyID string) *AdminGetPartyDataV1Params {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the admin get party data v1 params
func (o *AdminGetPartyDataV1Params) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPartyDataV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param partyId
	if err := r.SetPathParam("partyId", o.PartyID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
