// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform

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

// NewGetPsnEntitlementOwnershipParams creates a new GetPsnEntitlementOwnershipParams object
// with the default values initialized.
func NewGetPsnEntitlementOwnershipParams() *GetPsnEntitlementOwnershipParams {
	var ()
	return &GetPsnEntitlementOwnershipParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPsnEntitlementOwnershipParamsWithTimeout creates a new GetPsnEntitlementOwnershipParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPsnEntitlementOwnershipParamsWithTimeout(timeout time.Duration) *GetPsnEntitlementOwnershipParams {
	var ()
	return &GetPsnEntitlementOwnershipParams{

		timeout: timeout,
	}
}

// NewGetPsnEntitlementOwnershipParamsWithContext creates a new GetPsnEntitlementOwnershipParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPsnEntitlementOwnershipParamsWithContext(ctx context.Context) *GetPsnEntitlementOwnershipParams {
	var ()
	return &GetPsnEntitlementOwnershipParams{

		Context: ctx,
	}
}

// NewGetPsnEntitlementOwnershipParamsWithHTTPClient creates a new GetPsnEntitlementOwnershipParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPsnEntitlementOwnershipParamsWithHTTPClient(client *http.Client) *GetPsnEntitlementOwnershipParams {
	var ()
	return &GetPsnEntitlementOwnershipParams{
		HTTPClient: client,
	}
}

/*GetPsnEntitlementOwnershipParams contains all the parameters to send to the API endpoint
for the get psn entitlement ownership operation typically these are written to a http.Request
*/
type GetPsnEntitlementOwnershipParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PsnEntitlementOwnershipRequest
	/*EntitlementLabel*/
	EntitlementLabel string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithTimeout(timeout time.Duration) *GetPsnEntitlementOwnershipParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithContext(ctx context.Context) *GetPsnEntitlementOwnershipParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithHTTPClient(client *http.Client) *GetPsnEntitlementOwnershipParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPsnEntitlementOwnershipParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithBody(body *platformclientmodels.PsnEntitlementOwnershipRequest) *GetPsnEntitlementOwnershipParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetBody(body *platformclientmodels.PsnEntitlementOwnershipRequest) {
	o.Body = body
}

// WithEntitlementLabel adds the entitlementLabel to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithEntitlementLabel(entitlementLabel string) *GetPsnEntitlementOwnershipParams {
	o.SetEntitlementLabel(entitlementLabel)
	return o
}

// SetEntitlementLabel adds the entitlementLabel to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetEntitlementLabel(entitlementLabel string) {
	o.EntitlementLabel = entitlementLabel
}

// WithNamespace adds the namespace to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) WithNamespace(namespace string) *GetPsnEntitlementOwnershipParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get psn entitlement ownership params
func (o *GetPsnEntitlementOwnershipParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPsnEntitlementOwnershipParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param entitlementLabel
	if err := r.SetPathParam("entitlementLabel", o.EntitlementLabel); err != nil {
		return err
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
