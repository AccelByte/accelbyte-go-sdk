// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewGrantEntitlementsParams creates a new GrantEntitlementsParams object
// with the default values initialized.
func NewGrantEntitlementsParams() *GrantEntitlementsParams {
	var ()
	return &GrantEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGrantEntitlementsParamsWithTimeout creates a new GrantEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGrantEntitlementsParamsWithTimeout(timeout time.Duration) *GrantEntitlementsParams {
	var ()
	return &GrantEntitlementsParams{

		timeout: timeout,
	}
}

// NewGrantEntitlementsParamsWithContext creates a new GrantEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGrantEntitlementsParamsWithContext(ctx context.Context) *GrantEntitlementsParams {
	var ()
	return &GrantEntitlementsParams{

		Context: ctx,
	}
}

// NewGrantEntitlementsParamsWithHTTPClient creates a new GrantEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGrantEntitlementsParamsWithHTTPClient(client *http.Client) *GrantEntitlementsParams {
	var ()
	return &GrantEntitlementsParams{
		HTTPClient: client,
	}
}

/*GrantEntitlementsParams contains all the parameters to send to the API endpoint
for the grant entitlements operation typically these are written to a http.Request
*/
type GrantEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.BulkEntitlementGrantRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the grant entitlements params
func (o *GrantEntitlementsParams) WithTimeout(timeout time.Duration) *GrantEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the grant entitlements params
func (o *GrantEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the grant entitlements params
func (o *GrantEntitlementsParams) WithContext(ctx context.Context) *GrantEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the grant entitlements params
func (o *GrantEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the grant entitlements params
func (o *GrantEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the grant entitlements params
func (o *GrantEntitlementsParams) WithHTTPClient(client *http.Client) *GrantEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the grant entitlements params
func (o *GrantEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the grant entitlements params
func (o *GrantEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GrantEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the grant entitlements params
func (o *GrantEntitlementsParams) WithBody(body *platformclientmodels.BulkEntitlementGrantRequest) *GrantEntitlementsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the grant entitlements params
func (o *GrantEntitlementsParams) SetBody(body *platformclientmodels.BulkEntitlementGrantRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the grant entitlements params
func (o *GrantEntitlementsParams) WithNamespace(namespace string) *GrantEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the grant entitlements params
func (o *GrantEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GrantEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
