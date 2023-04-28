// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPostPlayerPublicRecordHandlerV1Params creates a new AdminPostPlayerPublicRecordHandlerV1Params object
// with the default values initialized.
func NewAdminPostPlayerPublicRecordHandlerV1Params() *AdminPostPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminPostPlayerPublicRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPostPlayerPublicRecordHandlerV1ParamsWithTimeout creates a new AdminPostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPostPlayerPublicRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminPostPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminPostPlayerPublicRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminPostPlayerPublicRecordHandlerV1ParamsWithContext creates a new AdminPostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPostPlayerPublicRecordHandlerV1ParamsWithContext(ctx context.Context) *AdminPostPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminPostPlayerPublicRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminPostPlayerPublicRecordHandlerV1ParamsWithHTTPClient creates a new AdminPostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPostPlayerPublicRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminPostPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminPostPlayerPublicRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminPostPlayerPublicRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the admin post player public record handler v1 operation typically these are written to a http.Request
*/
type AdminPostPlayerPublicRecordHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body cloudsaveclientmodels.ModelsPlayerRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithTimeout(timeout time.Duration) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithContext(ctx context.Context) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithHTTPClient(client *http.Client) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithKey(key string) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithNamespace(namespace string) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WithUserID(userID string) *AdminPostPlayerPublicRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin post player public record handler v1 params
func (o *AdminPostPlayerPublicRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPostPlayerPublicRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
