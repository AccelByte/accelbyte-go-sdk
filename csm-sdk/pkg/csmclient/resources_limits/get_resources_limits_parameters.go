// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package resources_limits

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

// NewGetResourcesLimitsParams creates a new GetResourcesLimitsParams object
// with the default values initialized.
func NewGetResourcesLimitsParams() *GetResourcesLimitsParams {
	var ()
	return &GetResourcesLimitsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetResourcesLimitsParamsWithTimeout creates a new GetResourcesLimitsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetResourcesLimitsParamsWithTimeout(timeout time.Duration) *GetResourcesLimitsParams {
	var ()
	return &GetResourcesLimitsParams{

		timeout: timeout,
	}
}

// NewGetResourcesLimitsParamsWithContext creates a new GetResourcesLimitsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetResourcesLimitsParamsWithContext(ctx context.Context) *GetResourcesLimitsParams {
	var ()
	return &GetResourcesLimitsParams{

		Context: ctx,
	}
}

// NewGetResourcesLimitsParamsWithHTTPClient creates a new GetResourcesLimitsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetResourcesLimitsParamsWithHTTPClient(client *http.Client) *GetResourcesLimitsParams {
	var ()
	return &GetResourcesLimitsParams{
		HTTPClient: client,
	}
}

/*GetResourcesLimitsParams contains all the parameters to send to the API endpoint
for the get resources limits operation typically these are written to a http.Request
*/
type GetResourcesLimitsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get resources limits params
func (o *GetResourcesLimitsParams) WithTimeout(timeout time.Duration) *GetResourcesLimitsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get resources limits params
func (o *GetResourcesLimitsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get resources limits params
func (o *GetResourcesLimitsParams) WithContext(ctx context.Context) *GetResourcesLimitsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get resources limits params
func (o *GetResourcesLimitsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get resources limits params
func (o *GetResourcesLimitsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get resources limits params
func (o *GetResourcesLimitsParams) WithHTTPClient(client *http.Client) *GetResourcesLimitsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get resources limits params
func (o *GetResourcesLimitsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get resources limits params
func (o *GetResourcesLimitsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetResourcesLimitsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get resources limits params
func (o *GetResourcesLimitsParams) WithNamespace(namespace string) *GetResourcesLimitsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get resources limits params
func (o *GetResourcesLimitsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetResourcesLimitsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
