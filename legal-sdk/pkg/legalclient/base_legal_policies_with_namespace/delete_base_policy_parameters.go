// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewDeleteBasePolicyParams creates a new DeleteBasePolicyParams object
// with the default values initialized.
func NewDeleteBasePolicyParams() *DeleteBasePolicyParams {
	var ()
	return &DeleteBasePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteBasePolicyParamsWithTimeout creates a new DeleteBasePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteBasePolicyParamsWithTimeout(timeout time.Duration) *DeleteBasePolicyParams {
	var ()
	return &DeleteBasePolicyParams{

		timeout: timeout,
	}
}

// NewDeleteBasePolicyParamsWithContext creates a new DeleteBasePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteBasePolicyParamsWithContext(ctx context.Context) *DeleteBasePolicyParams {
	var ()
	return &DeleteBasePolicyParams{

		Context: ctx,
	}
}

// NewDeleteBasePolicyParamsWithHTTPClient creates a new DeleteBasePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteBasePolicyParamsWithHTTPClient(client *http.Client) *DeleteBasePolicyParams {
	var ()
	return &DeleteBasePolicyParams{
		HTTPClient: client,
	}
}

/*DeleteBasePolicyParams contains all the parameters to send to the API endpoint
for the delete base policy operation typically these are written to a http.Request
*/
type DeleteBasePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete base policy params
func (o *DeleteBasePolicyParams) WithTimeout(timeout time.Duration) *DeleteBasePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete base policy params
func (o *DeleteBasePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete base policy params
func (o *DeleteBasePolicyParams) WithContext(ctx context.Context) *DeleteBasePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete base policy params
func (o *DeleteBasePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete base policy params
func (o *DeleteBasePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete base policy params
func (o *DeleteBasePolicyParams) WithHTTPClient(client *http.Client) *DeleteBasePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete base policy params
func (o *DeleteBasePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete base policy params
func (o *DeleteBasePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteBasePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the delete base policy params
func (o *DeleteBasePolicyParams) WithBasePolicyID(basePolicyID string) *DeleteBasePolicyParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the delete base policy params
func (o *DeleteBasePolicyParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithNamespace adds the namespace to the delete base policy params
func (o *DeleteBasePolicyParams) WithNamespace(namespace string) *DeleteBasePolicyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete base policy params
func (o *DeleteBasePolicyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteBasePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
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
