// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package blocks

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewSyncNativeBlockedUserParams creates a new SyncNativeBlockedUserParams object
// with the default values initialized.
func NewSyncNativeBlockedUserParams() *SyncNativeBlockedUserParams {
	var ()
	return &SyncNativeBlockedUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncNativeBlockedUserParamsWithTimeout creates a new SyncNativeBlockedUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncNativeBlockedUserParamsWithTimeout(timeout time.Duration) *SyncNativeBlockedUserParams {
	var ()
	return &SyncNativeBlockedUserParams{

		timeout: timeout,
	}
}

// NewSyncNativeBlockedUserParamsWithContext creates a new SyncNativeBlockedUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncNativeBlockedUserParamsWithContext(ctx context.Context) *SyncNativeBlockedUserParams {
	var ()
	return &SyncNativeBlockedUserParams{

		Context: ctx,
	}
}

// NewSyncNativeBlockedUserParamsWithHTTPClient creates a new SyncNativeBlockedUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncNativeBlockedUserParamsWithHTTPClient(client *http.Client) *SyncNativeBlockedUserParams {
	var ()
	return &SyncNativeBlockedUserParams{
		HTTPClient: client,
	}
}

/*SyncNativeBlockedUserParams contains all the parameters to send to the API endpoint
for the sync native blocked user operation typically these are written to a http.Request
*/
type SyncNativeBlockedUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*lobbyclientmodels.ModelNativeUserBlockRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) WithTimeout(timeout time.Duration) *SyncNativeBlockedUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) WithContext(ctx context.Context) *SyncNativeBlockedUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) WithHTTPClient(client *http.Client) *SyncNativeBlockedUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncNativeBlockedUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) WithBody(body []*lobbyclientmodels.ModelNativeUserBlockRequest) *SyncNativeBlockedUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetBody(body []*lobbyclientmodels.ModelNativeUserBlockRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) WithNamespace(namespace string) *SyncNativeBlockedUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync native blocked user params
func (o *SyncNativeBlockedUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SyncNativeBlockedUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
