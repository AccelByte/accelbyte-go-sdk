// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

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

// NewDeleteLocalizedPolicyParams creates a new DeleteLocalizedPolicyParams object
// with the default values initialized.
func NewDeleteLocalizedPolicyParams() *DeleteLocalizedPolicyParams {
	var ()
	return &DeleteLocalizedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteLocalizedPolicyParamsWithTimeout creates a new DeleteLocalizedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteLocalizedPolicyParamsWithTimeout(timeout time.Duration) *DeleteLocalizedPolicyParams {
	var ()
	return &DeleteLocalizedPolicyParams{

		timeout: timeout,
	}
}

// NewDeleteLocalizedPolicyParamsWithContext creates a new DeleteLocalizedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteLocalizedPolicyParamsWithContext(ctx context.Context) *DeleteLocalizedPolicyParams {
	var ()
	return &DeleteLocalizedPolicyParams{

		Context: ctx,
	}
}

// NewDeleteLocalizedPolicyParamsWithHTTPClient creates a new DeleteLocalizedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteLocalizedPolicyParamsWithHTTPClient(client *http.Client) *DeleteLocalizedPolicyParams {
	var ()
	return &DeleteLocalizedPolicyParams{
		HTTPClient: client,
	}
}

/*DeleteLocalizedPolicyParams contains all the parameters to send to the API endpoint
for the delete localized policy operation typically these are written to a http.Request
*/
type DeleteLocalizedPolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string
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

// WithTimeout adds the timeout to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) WithTimeout(timeout time.Duration) *DeleteLocalizedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) WithContext(ctx context.Context) *DeleteLocalizedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) WithHTTPClient(client *http.Client) *DeleteLocalizedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteLocalizedPolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *DeleteLocalizedPolicyParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) WithNamespace(namespace string) *DeleteLocalizedPolicyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete localized policy params
func (o *DeleteLocalizedPolicyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteLocalizedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
