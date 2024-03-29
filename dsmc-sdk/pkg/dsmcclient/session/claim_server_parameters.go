// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewClaimServerParams creates a new ClaimServerParams object
// with the default values initialized.
func NewClaimServerParams() *ClaimServerParams {
	var ()
	return &ClaimServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewClaimServerParamsWithTimeout creates a new ClaimServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewClaimServerParamsWithTimeout(timeout time.Duration) *ClaimServerParams {
	var ()
	return &ClaimServerParams{

		timeout: timeout,
	}
}

// NewClaimServerParamsWithContext creates a new ClaimServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewClaimServerParamsWithContext(ctx context.Context) *ClaimServerParams {
	var ()
	return &ClaimServerParams{

		Context: ctx,
	}
}

// NewClaimServerParamsWithHTTPClient creates a new ClaimServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewClaimServerParamsWithHTTPClient(client *http.Client) *ClaimServerParams {
	var ()
	return &ClaimServerParams{
		HTTPClient: client,
	}
}

/*ClaimServerParams contains all the parameters to send to the API endpoint
for the claim server operation typically these are written to a http.Request
*/
type ClaimServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsClaimSessionRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the claim server params
func (o *ClaimServerParams) WithTimeout(timeout time.Duration) *ClaimServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the claim server params
func (o *ClaimServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the claim server params
func (o *ClaimServerParams) WithContext(ctx context.Context) *ClaimServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the claim server params
func (o *ClaimServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the claim server params
func (o *ClaimServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the claim server params
func (o *ClaimServerParams) WithHTTPClient(client *http.Client) *ClaimServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the claim server params
func (o *ClaimServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the claim server params
func (o *ClaimServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ClaimServerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the claim server params
func (o *ClaimServerParams) WithBody(body *dsmcclientmodels.ModelsClaimSessionRequest) *ClaimServerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the claim server params
func (o *ClaimServerParams) SetBody(body *dsmcclientmodels.ModelsClaimSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the claim server params
func (o *ClaimServerParams) WithNamespace(namespace string) *ClaimServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the claim server params
func (o *ClaimServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ClaimServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
