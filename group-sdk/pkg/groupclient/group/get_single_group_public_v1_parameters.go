// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// NewGetSingleGroupPublicV1Params creates a new GetSingleGroupPublicV1Params object
// with the default values initialized.
func NewGetSingleGroupPublicV1Params() *GetSingleGroupPublicV1Params {
	var ()
	return &GetSingleGroupPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSingleGroupPublicV1ParamsWithTimeout creates a new GetSingleGroupPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSingleGroupPublicV1ParamsWithTimeout(timeout time.Duration) *GetSingleGroupPublicV1Params {
	var ()
	return &GetSingleGroupPublicV1Params{

		timeout: timeout,
	}
}

// NewGetSingleGroupPublicV1ParamsWithContext creates a new GetSingleGroupPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetSingleGroupPublicV1ParamsWithContext(ctx context.Context) *GetSingleGroupPublicV1Params {
	var ()
	return &GetSingleGroupPublicV1Params{

		Context: ctx,
	}
}

// NewGetSingleGroupPublicV1ParamsWithHTTPClient creates a new GetSingleGroupPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSingleGroupPublicV1ParamsWithHTTPClient(client *http.Client) *GetSingleGroupPublicV1Params {
	var ()
	return &GetSingleGroupPublicV1Params{
		HTTPClient: client,
	}
}

/*GetSingleGroupPublicV1Params contains all the parameters to send to the API endpoint
for the get single group public v1 operation typically these are written to a http.Request
*/
type GetSingleGroupPublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) WithTimeout(timeout time.Duration) *GetSingleGroupPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) WithContext(ctx context.Context) *GetSingleGroupPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) WithHTTPClient(client *http.Client) *GetSingleGroupPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) WithGroupID(groupID string) *GetSingleGroupPublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) WithNamespace(namespace string) *GetSingleGroupPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get single group public v1 params
func (o *GetSingleGroupPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetSingleGroupPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
